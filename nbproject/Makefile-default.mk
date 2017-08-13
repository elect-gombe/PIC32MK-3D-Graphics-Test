#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic32mk_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic32mk_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=3dmain.cpp newmain.c newmain1.c triangle.cpp vector2.cpp vector3.cpp fvector2.cpp fvector3.cpp graphicdraw.cpp matrix4.cpp texturepoly.cpp

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/3dmain.o ${OBJECTDIR}/newmain.o ${OBJECTDIR}/newmain1.o ${OBJECTDIR}/triangle.o ${OBJECTDIR}/vector2.o ${OBJECTDIR}/vector3.o ${OBJECTDIR}/fvector2.o ${OBJECTDIR}/fvector3.o ${OBJECTDIR}/graphicdraw.o ${OBJECTDIR}/matrix4.o ${OBJECTDIR}/texturepoly.o
POSSIBLE_DEPFILES=${OBJECTDIR}/3dmain.o.d ${OBJECTDIR}/newmain.o.d ${OBJECTDIR}/newmain1.o.d ${OBJECTDIR}/triangle.o.d ${OBJECTDIR}/vector2.o.d ${OBJECTDIR}/vector3.o.d ${OBJECTDIR}/fvector2.o.d ${OBJECTDIR}/fvector3.o.d ${OBJECTDIR}/graphicdraw.o.d ${OBJECTDIR}/matrix4.o.d ${OBJECTDIR}/texturepoly.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/3dmain.o ${OBJECTDIR}/newmain.o ${OBJECTDIR}/newmain1.o ${OBJECTDIR}/triangle.o ${OBJECTDIR}/vector2.o ${OBJECTDIR}/vector3.o ${OBJECTDIR}/fvector2.o ${OBJECTDIR}/fvector3.o ${OBJECTDIR}/graphicdraw.o ${OBJECTDIR}/matrix4.o ${OBJECTDIR}/texturepoly.o

# Source Files
SOURCEFILES=3dmain.cpp newmain.c newmain1.c triangle.cpp vector2.cpp vector3.cpp fvector2.cpp fvector3.cpp graphicdraw.cpp matrix4.cpp texturepoly.cpp


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/pic32mk_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MK1024GPD064
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/newmain.o: newmain.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/newmain.o.d 
	@${RM} ${OBJECTDIR}/newmain.o 
	@${FIXDEPS} "${OBJECTDIR}/newmain.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -MMD -MF "${OBJECTDIR}/newmain.o.d" -o ${OBJECTDIR}/newmain.o newmain.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/newmain1.o: newmain1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/newmain1.o.d 
	@${RM} ${OBJECTDIR}/newmain1.o 
	@${FIXDEPS} "${OBJECTDIR}/newmain1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -MMD -MF "${OBJECTDIR}/newmain1.o.d" -o ${OBJECTDIR}/newmain1.o newmain1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/newmain.o: newmain.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/newmain.o.d 
	@${RM} ${OBJECTDIR}/newmain.o 
	@${FIXDEPS} "${OBJECTDIR}/newmain.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -MMD -MF "${OBJECTDIR}/newmain.o.d" -o ${OBJECTDIR}/newmain.o newmain.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/newmain1.o: newmain1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/newmain1.o.d 
	@${RM} ${OBJECTDIR}/newmain1.o 
	@${FIXDEPS} "${OBJECTDIR}/newmain1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O3 -MMD -MF "${OBJECTDIR}/newmain1.o.d" -o ${OBJECTDIR}/newmain1.o newmain1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/3dmain.o: 3dmain.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/3dmain.o.d 
	@${RM} ${OBJECTDIR}/3dmain.o 
	@${FIXDEPS} "${OBJECTDIR}/3dmain.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/3dmain.o.d" -o ${OBJECTDIR}/3dmain.o 3dmain.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/triangle.o: triangle.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/triangle.o.d 
	@${RM} ${OBJECTDIR}/triangle.o 
	@${FIXDEPS} "${OBJECTDIR}/triangle.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/triangle.o.d" -o ${OBJECTDIR}/triangle.o triangle.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/vector2.o: vector2.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/vector2.o.d 
	@${RM} ${OBJECTDIR}/vector2.o 
	@${FIXDEPS} "${OBJECTDIR}/vector2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/vector2.o.d" -o ${OBJECTDIR}/vector2.o vector2.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/vector3.o: vector3.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/vector3.o.d 
	@${RM} ${OBJECTDIR}/vector3.o 
	@${FIXDEPS} "${OBJECTDIR}/vector3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/vector3.o.d" -o ${OBJECTDIR}/vector3.o vector3.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fvector2.o: fvector2.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/fvector2.o.d 
	@${RM} ${OBJECTDIR}/fvector2.o 
	@${FIXDEPS} "${OBJECTDIR}/fvector2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/fvector2.o.d" -o ${OBJECTDIR}/fvector2.o fvector2.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fvector3.o: fvector3.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/fvector3.o.d 
	@${RM} ${OBJECTDIR}/fvector3.o 
	@${FIXDEPS} "${OBJECTDIR}/fvector3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/fvector3.o.d" -o ${OBJECTDIR}/fvector3.o fvector3.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/graphicdraw.o: graphicdraw.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/graphicdraw.o.d 
	@${RM} ${OBJECTDIR}/graphicdraw.o 
	@${FIXDEPS} "${OBJECTDIR}/graphicdraw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/graphicdraw.o.d" -o ${OBJECTDIR}/graphicdraw.o graphicdraw.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/matrix4.o: matrix4.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/matrix4.o.d 
	@${RM} ${OBJECTDIR}/matrix4.o 
	@${FIXDEPS} "${OBJECTDIR}/matrix4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/matrix4.o.d" -o ${OBJECTDIR}/matrix4.o matrix4.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/texturepoly.o: texturepoly.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/texturepoly.o.d 
	@${RM} ${OBJECTDIR}/texturepoly.o 
	@${FIXDEPS} "${OBJECTDIR}/texturepoly.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/texturepoly.o.d" -o ${OBJECTDIR}/texturepoly.o texturepoly.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/3dmain.o: 3dmain.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/3dmain.o.d 
	@${RM} ${OBJECTDIR}/3dmain.o 
	@${FIXDEPS} "${OBJECTDIR}/3dmain.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/3dmain.o.d" -o ${OBJECTDIR}/3dmain.o 3dmain.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/triangle.o: triangle.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/triangle.o.d 
	@${RM} ${OBJECTDIR}/triangle.o 
	@${FIXDEPS} "${OBJECTDIR}/triangle.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/triangle.o.d" -o ${OBJECTDIR}/triangle.o triangle.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/vector2.o: vector2.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/vector2.o.d 
	@${RM} ${OBJECTDIR}/vector2.o 
	@${FIXDEPS} "${OBJECTDIR}/vector2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/vector2.o.d" -o ${OBJECTDIR}/vector2.o vector2.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/vector3.o: vector3.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/vector3.o.d 
	@${RM} ${OBJECTDIR}/vector3.o 
	@${FIXDEPS} "${OBJECTDIR}/vector3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/vector3.o.d" -o ${OBJECTDIR}/vector3.o vector3.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fvector2.o: fvector2.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/fvector2.o.d 
	@${RM} ${OBJECTDIR}/fvector2.o 
	@${FIXDEPS} "${OBJECTDIR}/fvector2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/fvector2.o.d" -o ${OBJECTDIR}/fvector2.o fvector2.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fvector3.o: fvector3.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/fvector3.o.d 
	@${RM} ${OBJECTDIR}/fvector3.o 
	@${FIXDEPS} "${OBJECTDIR}/fvector3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/fvector3.o.d" -o ${OBJECTDIR}/fvector3.o fvector3.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/graphicdraw.o: graphicdraw.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/graphicdraw.o.d 
	@${RM} ${OBJECTDIR}/graphicdraw.o 
	@${FIXDEPS} "${OBJECTDIR}/graphicdraw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/graphicdraw.o.d" -o ${OBJECTDIR}/graphicdraw.o graphicdraw.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/matrix4.o: matrix4.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/matrix4.o.d 
	@${RM} ${OBJECTDIR}/matrix4.o 
	@${FIXDEPS} "${OBJECTDIR}/matrix4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/matrix4.o.d" -o ${OBJECTDIR}/matrix4.o matrix4.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/texturepoly.o: texturepoly.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/texturepoly.o.d 
	@${RM} ${OBJECTDIR}/texturepoly.o 
	@${FIXDEPS} "${OBJECTDIR}/texturepoly.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O3 -MMD -MF "${OBJECTDIR}/texturepoly.o.d" -o ${OBJECTDIR}/texturepoly.o texturepoly.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic32mk_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  crt0_mips32r2.o default_isr_vectors.o libpic32.a crti.o crtbegin.o crtend.o crtn.o  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION) -nostartfiles -o dist/${CND_CONF}/${IMAGE_TYPE}/pic32mk_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    crt0_mips32r2.o default_isr_vectors.o libpic32.a crti.o crtbegin.o crtend.o crtn.o      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x363   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_stack_size=1500,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic32mk_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  crt0_mips32r2.o default_isr_vectors.o libpic32.a crti.o crtbegin.o crtend.o crtn.o 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -nostartfiles -o dist/${CND_CONF}/${IMAGE_TYPE}/pic32mk_test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    crt0_mips32r2.o default_isr_vectors.o libpic32.a crti.o crtbegin.o crtend.o crtn.o      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_stack_size=1500,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/pic32mk_test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
