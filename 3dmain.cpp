#include "3dconfig.hpp"
#include "vector2.hpp"
#include "vector3.hpp"
#include "vector4.hpp"
#include "fvector4.hpp"
#include "fvector2.hpp"
#include "matrix4.hpp"
#include "graphiclib.hpp"
#include "triangle.hpp"
#include "texturepoly.hpp"
#include "lcd.h"
#include <algorithm>

extern "C"{
  void toggleLED(void);
  void send_first(int ypos) ;
  void send_line(uint16_t *line) ;
  void send_aline_finish();
  int main3d();
  void esp_task_wdt_feed();
  void wait_until_trans_done(void);
}

#include "poly.h"

#define POLYNUM int(sizeof(polyvec)/sizeof(polyvec[0]))
#define POINTNUM int(sizeof(pointvec)/sizeof(pointvec[0]))
#define WIRENUM int(sizeof(wireframe)/sizeof(wireframe[0]))

#define MAXPROC_POLYNUM (POLYNUM*2/3)

vector3 pv[12][3];

float loadPower(const fvector3 &light_pos,const fvector3 &light_n,const fvector4 obj[3]){
  fvector3 light_obj;
  fvector3 n;
  fvector4 obj_pos;
  float cos_cross;

  obj_pos = obj[0]+obj[1]+obj[2];
  obj_pos.x = obj_pos.x / 3;
  obj_pos.y = obj_pos.y / 3;
  obj_pos.z = obj_pos.z / 3;
  
  n = calc_nv(obj);
  cos_cross = light_n * n;

  return cos_cross;// * light_obj_dist/65536;
}

const int SIZE_TEX = 256;

fvector4 obj_transed[POINTNUM];
fvector4 poly_transed[POINTNUM];

uint16_t drawbuff[2][window_width*DRAW_NLINES];

float zlinebuf[window_width*DRAW_NLINES];

texturetriangle t[MAXPROC_POLYNUM];

#if ZSORT
//ソート用のデータの作成
struct draworder_t{
  int draworder;
  int zdata;
};
draworder_t draworder[MAXPROC_POLYNUM];
#endif


int main3d(void){
  Matrix4 m;
  Matrix4 projection;
  Matrix4 obj;

  //透視投影行列
  projection=loadPerspective(0.25f,float(window_height)/window_width,0.0001f,3.f,0,0)*projection;

  fvector3 viewdir;
  fvector3 veye;
  float dist = 3.f;
  vector2 mouse;
  vector2 pmouse;
  fvector2 np = fvector2(440.f,0);
  vector2 pnp;
  bool clicking = false;
  float average = 20.f;
    
  fvector4 vo[3];
  fvector4 v[3];
  fvector3 n;
  int tnum=0;

  int hogec=0;
  uint32_t prev = 0;  

  veye = fvector3(0,0,-15.5f);
  obj = obj*magnify(1.f);
  while(1){
    {
        tnum = 0;
    np.x+=3.f; 
    //視点計算
#if MODEL == 1
    dist = 2.5f;// + 1.4f*cosf(np.x/150.f*3.14159265358979324f);
    m=projection*lookat(fvector3(0,0,0),veye*dist)*obj*translation(fvector3(0,-0.3,0));
#else
    dist = 4.f + 1.5f*cosf(np.x/150.f*3.14159265358979324f);
#endif
    veye = -fvector3(cosf(np.x/300.f*3.14159265f)*cosf(np.y/300.f*3.14159265f),sinf(np.y/300.f*3.14159265f),sinf(np.x/300.f*3.14159265f)*cosf(np.y/300.f*3.14159265f));
    //透視投影行列とカメラ行列の合成
#if MODEL <= 3
    m=projection*lookat(fvector3(0,0,0),veye*dist)*obj*translation(fvector3(0,-0.3,0));
#else
    m=projection*lookat(fvector3(0,0,0),veye*dist)*obj*translation(fvector3(0,0,-0.7));
#endif
    //頂点データを変換
    for(int j=0;j<POINTNUM;j++){
      obj_transed[j] = fvector4(pointvec[j].x,pointvec[j].y,pointvec[j].z);
      poly_transed[j] = m.applyit_v4(fvector3(pointvec[j]));
    }
    //ポリゴンデータの生成
    for(int i=0;i<POLYNUM;i++){
      for(int j=0;j<3;j++){
	v[j] = poly_transed[polyvec[i][j]];
	vo[j] = obj_transed[polyvec[i][j]];
      }

      //簡易1次クリッピング
      if(v[0].w < 0)continue;
      if(v[2].w < 0)continue;
      if(v[1].w < 0)continue;
      if(!(
	   !((abs(v[0].x) > 1.f)||(abs(v[0].y) > 1.f)||(abs(v[0].z) < 0.f))||
	   !((abs(v[1].x) > 1.f)||(abs(v[1].y) > 1.f)||(abs(v[1].z) < 0.f))||
	   !((abs(v[2].x) > 1.f)||(abs(v[2].y) > 1.f)||(abs(v[2].z) < 0.f))))
	continue;
      //クリップ座標系からディスプレイ座標系の変換
      v[0].x=v[0].x*window_width+window_width*0.5;v[0].y=v[0].y*window_height+window_height*0.5;
      v[1].x=v[1].x*window_width+window_width*0.5;v[1].y=v[1].y*window_height+window_height*0.5;
      v[2].x=v[2].x*window_width+window_width*0.5;v[2].y=v[2].y*window_height+window_height*0.5;

      //テクスチャのデータ
      const texture_t tex={
    	stonetex,vector2(4,4)
      };
      fvector2 puv[3];
      for(int j=0;j<3;j++){
	puv[j].x = (1.f-point_uv[polyvec[i][j]].x)*SIZE_TEX;
	puv[j].y = (point_uv[polyvec[i][j]].y)*SIZE_TEX;
      }
      //光量の計算
      float light = loadPower(fvector3(),veye,vo);
      if(light>0){
	if(t[tnum++].triangle_set(v,light,&tex,puv)==-1)tnum--;
      }
    }
    
#if ZSORT
    for(int i=0;i<tnum;i++){
      draworder[i].draworder = i;
      draworder[i].zdata = t[i].pdz[0]*65536.;
    }
    std::sort(draworder,draworder+tnum, [](draworder_t& x, draworder_t& y){return x.zdata < y.zdata;});
#endif
    
    //ラインごとに描画しLCDに転送
    LCD_SetCursor(0,0,window_width-1,window_height-1);

    for(int y=0;y<window_height/DRAW_NLINES;y++){
      for(int i=0;i<window_width*DRAW_NLINES;i++){
	zlinebuf[i]=1.f;
	drawbuff[(y)&1][i]=0x0020;/*RGB*/
      }
      for(int i=0;i<tnum;i++){
#if ZSORT
	if(t[draworder[i].draworder].ymin < y*DRAW_NLINES+DRAW_NLINES&&t[draworder[i].draworder].ymax >= y*DRAW_NLINES){
	  t[draworder[i].draworder].draw(zlinebuf,drawbuff[(y)&1],y*DRAW_NLINES);
#else
	  if(t[i].ymin < (y*DRAW_NLINES)+DRAW_NLINES&&t[i].ymax >= y*DRAW_NLINES){
	    t[i].draw(zlinebuf,drawbuff[(y)&1],y*DRAW_NLINES);
#endif
	}
      }
      wait_until_trans_done();
      send_line(drawbuff[(y)&1]);
    }
  }
}
}
