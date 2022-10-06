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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/collimator_controller.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/collimator_controller.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../../../board/src/gpio_cfg_el258300.c ../../../../../board/src/nvm_store_el258300.c ../../../../../board/src/can_cfg_el258300.c ../../../../../board/src/sys_init_dspic33ep.c ../../../can1_drv_dspic33ep/src/CANInterrupt.c ../../../can1_drv_dspic33ep/src/ECAN1Config.c ../../../can1_drv_dspic33ep/src/ECAN1Drv.c ../../../can2_drv_dspic33ep/src/CAN2Interrupt.c ../../../can2_drv_dspic33ep/src/ECAN2Config.c ../../../can2_drv_dspic33ep/src/ECAN2Drv.c ../../../canopen/src/CANOpenStoreParameters.c ../../../canopen/src/CanNode.c ../../../canopen/src/LSS.c ../../../canopen/src/NMT.c ../../../canopen/src/NodeGuard.c ../../../canopen/src/ObjectDict.c ../../../canopen/src/PDO.c ../../../canopen/src/SDO.c ../../../canopen/src/sync.c ../../../../../modules/coll_ctrl/src/coll_ctrl.c ../../../../../modules/coll_ctrl/src/object_dictionary.c ../../../../../modules/coll_ctrl/src/sys_cfg.c ../../../core/src/CoreSignal.c ../../../core/src/CoreTimer.c ../../../dio_drv_dspic33ep128gm604/src/dio_drv_dspic33ep128gm604.c ../../../flash_drv_dspic33ep/src/flash_driver_dspic33ep.c ../../../../../modules/flashctrl/src/flashctrl.c ../../../../../modules/flashctrl/src/flashctrl_sector.c ../../../timer_drv_dspic33ep_gm604/src/timer_drv_dspic33ep_gm604.c ../../../src/app.c ../../../src/can_isr.c ../../../src/main.c ../../../src/timer_isr.c ../../../src/traps.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1361220844/gpio_cfg_el258300.o ${OBJECTDIR}/_ext/1361220844/nvm_store_el258300.o ${OBJECTDIR}/_ext/1361220844/can_cfg_el258300.o ${OBJECTDIR}/_ext/1361220844/sys_init_dspic33ep.o ${OBJECTDIR}/_ext/390608725/CANInterrupt.o ${OBJECTDIR}/_ext/390608725/ECAN1Config.o ${OBJECTDIR}/_ext/390608725/ECAN1Drv.o ${OBJECTDIR}/_ext/453863146/CAN2Interrupt.o ${OBJECTDIR}/_ext/453863146/ECAN2Config.o ${OBJECTDIR}/_ext/453863146/ECAN2Drv.o ${OBJECTDIR}/_ext/955687872/CANOpenStoreParameters.o ${OBJECTDIR}/_ext/955687872/CanNode.o ${OBJECTDIR}/_ext/955687872/LSS.o ${OBJECTDIR}/_ext/955687872/NMT.o ${OBJECTDIR}/_ext/955687872/NodeGuard.o ${OBJECTDIR}/_ext/955687872/ObjectDict.o ${OBJECTDIR}/_ext/955687872/PDO.o ${OBJECTDIR}/_ext/955687872/SDO.o ${OBJECTDIR}/_ext/955687872/sync.o ${OBJECTDIR}/_ext/1260807204/coll_ctrl.o ${OBJECTDIR}/_ext/1260807204/object_dictionary.o ${OBJECTDIR}/_ext/1260807204/sys_cfg.o ${OBJECTDIR}/_ext/603503939/CoreSignal.o ${OBJECTDIR}/_ext/603503939/CoreTimer.o ${OBJECTDIR}/_ext/613093629/dio_drv_dspic33ep128gm604.o ${OBJECTDIR}/_ext/68587034/flash_driver_dspic33ep.o ${OBJECTDIR}/_ext/404484135/flashctrl.o ${OBJECTDIR}/_ext/404484135/flashctrl_sector.o ${OBJECTDIR}/_ext/613364720/timer_drv_dspic33ep_gm604.o ${OBJECTDIR}/_ext/1386528437/app.o ${OBJECTDIR}/_ext/1386528437/can_isr.o ${OBJECTDIR}/_ext/1386528437/main.o ${OBJECTDIR}/_ext/1386528437/timer_isr.o ${OBJECTDIR}/_ext/1386528437/traps.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1361220844/gpio_cfg_el258300.o.d ${OBJECTDIR}/_ext/1361220844/nvm_store_el258300.o.d ${OBJECTDIR}/_ext/1361220844/can_cfg_el258300.o.d ${OBJECTDIR}/_ext/1361220844/sys_init_dspic33ep.o.d ${OBJECTDIR}/_ext/390608725/CANInterrupt.o.d ${OBJECTDIR}/_ext/390608725/ECAN1Config.o.d ${OBJECTDIR}/_ext/390608725/ECAN1Drv.o.d ${OBJECTDIR}/_ext/453863146/CAN2Interrupt.o.d ${OBJECTDIR}/_ext/453863146/ECAN2Config.o.d ${OBJECTDIR}/_ext/453863146/ECAN2Drv.o.d ${OBJECTDIR}/_ext/955687872/CANOpenStoreParameters.o.d ${OBJECTDIR}/_ext/955687872/CanNode.o.d ${OBJECTDIR}/_ext/955687872/LSS.o.d ${OBJECTDIR}/_ext/955687872/NMT.o.d ${OBJECTDIR}/_ext/955687872/NodeGuard.o.d ${OBJECTDIR}/_ext/955687872/ObjectDict.o.d ${OBJECTDIR}/_ext/955687872/PDO.o.d ${OBJECTDIR}/_ext/955687872/SDO.o.d ${OBJECTDIR}/_ext/955687872/sync.o.d ${OBJECTDIR}/_ext/1260807204/coll_ctrl.o.d ${OBJECTDIR}/_ext/1260807204/object_dictionary.o.d ${OBJECTDIR}/_ext/1260807204/sys_cfg.o.d ${OBJECTDIR}/_ext/603503939/CoreSignal.o.d ${OBJECTDIR}/_ext/603503939/CoreTimer.o.d ${OBJECTDIR}/_ext/613093629/dio_drv_dspic33ep128gm604.o.d ${OBJECTDIR}/_ext/68587034/flash_driver_dspic33ep.o.d ${OBJECTDIR}/_ext/404484135/flashctrl.o.d ${OBJECTDIR}/_ext/404484135/flashctrl_sector.o.d ${OBJECTDIR}/_ext/613364720/timer_drv_dspic33ep_gm604.o.d ${OBJECTDIR}/_ext/1386528437/app.o.d ${OBJECTDIR}/_ext/1386528437/can_isr.o.d ${OBJECTDIR}/_ext/1386528437/main.o.d ${OBJECTDIR}/_ext/1386528437/timer_isr.o.d ${OBJECTDIR}/_ext/1386528437/traps.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1361220844/gpio_cfg_el258300.o ${OBJECTDIR}/_ext/1361220844/nvm_store_el258300.o ${OBJECTDIR}/_ext/1361220844/can_cfg_el258300.o ${OBJECTDIR}/_ext/1361220844/sys_init_dspic33ep.o ${OBJECTDIR}/_ext/390608725/CANInterrupt.o ${OBJECTDIR}/_ext/390608725/ECAN1Config.o ${OBJECTDIR}/_ext/390608725/ECAN1Drv.o ${OBJECTDIR}/_ext/453863146/CAN2Interrupt.o ${OBJECTDIR}/_ext/453863146/ECAN2Config.o ${OBJECTDIR}/_ext/453863146/ECAN2Drv.o ${OBJECTDIR}/_ext/955687872/CANOpenStoreParameters.o ${OBJECTDIR}/_ext/955687872/CanNode.o ${OBJECTDIR}/_ext/955687872/LSS.o ${OBJECTDIR}/_ext/955687872/NMT.o ${OBJECTDIR}/_ext/955687872/NodeGuard.o ${OBJECTDIR}/_ext/955687872/ObjectDict.o ${OBJECTDIR}/_ext/955687872/PDO.o ${OBJECTDIR}/_ext/955687872/SDO.o ${OBJECTDIR}/_ext/955687872/sync.o ${OBJECTDIR}/_ext/1260807204/coll_ctrl.o ${OBJECTDIR}/_ext/1260807204/object_dictionary.o ${OBJECTDIR}/_ext/1260807204/sys_cfg.o ${OBJECTDIR}/_ext/603503939/CoreSignal.o ${OBJECTDIR}/_ext/603503939/CoreTimer.o ${OBJECTDIR}/_ext/613093629/dio_drv_dspic33ep128gm604.o ${OBJECTDIR}/_ext/68587034/flash_driver_dspic33ep.o ${OBJECTDIR}/_ext/404484135/flashctrl.o ${OBJECTDIR}/_ext/404484135/flashctrl_sector.o ${OBJECTDIR}/_ext/613364720/timer_drv_dspic33ep_gm604.o ${OBJECTDIR}/_ext/1386528437/app.o ${OBJECTDIR}/_ext/1386528437/can_isr.o ${OBJECTDIR}/_ext/1386528437/main.o ${OBJECTDIR}/_ext/1386528437/timer_isr.o ${OBJECTDIR}/_ext/1386528437/traps.o

# Source Files
SOURCEFILES=../../../../../board/src/gpio_cfg_el258300.c ../../../../../board/src/nvm_store_el258300.c ../../../../../board/src/can_cfg_el258300.c ../../../../../board/src/sys_init_dspic33ep.c ../../../can1_drv_dspic33ep/src/CANInterrupt.c ../../../can1_drv_dspic33ep/src/ECAN1Config.c ../../../can1_drv_dspic33ep/src/ECAN1Drv.c ../../../can2_drv_dspic33ep/src/CAN2Interrupt.c ../../../can2_drv_dspic33ep/src/ECAN2Config.c ../../../can2_drv_dspic33ep/src/ECAN2Drv.c ../../../canopen/src/CANOpenStoreParameters.c ../../../canopen/src/CanNode.c ../../../canopen/src/LSS.c ../../../canopen/src/NMT.c ../../../canopen/src/NodeGuard.c ../../../canopen/src/ObjectDict.c ../../../canopen/src/PDO.c ../../../canopen/src/SDO.c ../../../canopen/src/sync.c ../../../../../modules/coll_ctrl/src/coll_ctrl.c ../../../../../modules/coll_ctrl/src/object_dictionary.c ../../../../../modules/coll_ctrl/src/sys_cfg.c ../../../core/src/CoreSignal.c ../../../core/src/CoreTimer.c ../../../dio_drv_dspic33ep128gm604/src/dio_drv_dspic33ep128gm604.c ../../../flash_drv_dspic33ep/src/flash_driver_dspic33ep.c ../../../../../modules/flashctrl/src/flashctrl.c ../../../../../modules/flashctrl/src/flashctrl_sector.c ../../../timer_drv_dspic33ep_gm604/src/timer_drv_dspic33ep_gm604.c ../../../src/app.c ../../../src/can_isr.c ../../../src/main.c ../../../src/timer_isr.c ../../../src/traps.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/collimator_controller.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP256GM604
MP_LINKER_FILE_OPTION=,--script="..\..\..\..\..\board\p33EP128GM604.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1361220844/gpio_cfg_el258300.o: ../../../../../board/src/gpio_cfg_el258300.c  .generated_files/c3067a7074c89acfedf50e49ba1da5087650cdae.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1361220844" 
	@${RM} ${OBJECTDIR}/_ext/1361220844/gpio_cfg_el258300.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361220844/gpio_cfg_el258300.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../board/src/gpio_cfg_el258300.c  -o ${OBJECTDIR}/_ext/1361220844/gpio_cfg_el258300.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1361220844/gpio_cfg_el258300.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1361220844/nvm_store_el258300.o: ../../../../../board/src/nvm_store_el258300.c  .generated_files/bb06252b5ddcc880378f743aa190fc84c6595d19.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1361220844" 
	@${RM} ${OBJECTDIR}/_ext/1361220844/nvm_store_el258300.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361220844/nvm_store_el258300.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../board/src/nvm_store_el258300.c  -o ${OBJECTDIR}/_ext/1361220844/nvm_store_el258300.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1361220844/nvm_store_el258300.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1361220844/can_cfg_el258300.o: ../../../../../board/src/can_cfg_el258300.c  .generated_files/3598d42071ee68c858d5ed8a808386ba799b51ab.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1361220844" 
	@${RM} ${OBJECTDIR}/_ext/1361220844/can_cfg_el258300.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361220844/can_cfg_el258300.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../board/src/can_cfg_el258300.c  -o ${OBJECTDIR}/_ext/1361220844/can_cfg_el258300.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1361220844/can_cfg_el258300.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1361220844/sys_init_dspic33ep.o: ../../../../../board/src/sys_init_dspic33ep.c  .generated_files/a037c434e482be6d7322e5084970e56ce1c6fe84.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1361220844" 
	@${RM} ${OBJECTDIR}/_ext/1361220844/sys_init_dspic33ep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361220844/sys_init_dspic33ep.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../board/src/sys_init_dspic33ep.c  -o ${OBJECTDIR}/_ext/1361220844/sys_init_dspic33ep.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1361220844/sys_init_dspic33ep.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/390608725/CANInterrupt.o: ../../../can1_drv_dspic33ep/src/CANInterrupt.c  .generated_files/7666f9430937f77b9f55ed776ec29c3c8d5f6e08.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/390608725" 
	@${RM} ${OBJECTDIR}/_ext/390608725/CANInterrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/390608725/CANInterrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../can1_drv_dspic33ep/src/CANInterrupt.c  -o ${OBJECTDIR}/_ext/390608725/CANInterrupt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/390608725/CANInterrupt.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/390608725/ECAN1Config.o: ../../../can1_drv_dspic33ep/src/ECAN1Config.c  .generated_files/2fab35fad9cb8ebc8c9769b5b17d024aa2652b73.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/390608725" 
	@${RM} ${OBJECTDIR}/_ext/390608725/ECAN1Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/390608725/ECAN1Config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../can1_drv_dspic33ep/src/ECAN1Config.c  -o ${OBJECTDIR}/_ext/390608725/ECAN1Config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/390608725/ECAN1Config.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/390608725/ECAN1Drv.o: ../../../can1_drv_dspic33ep/src/ECAN1Drv.c  .generated_files/65a6e8970f934dd475b2292de1129231c0e4b0a1.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/390608725" 
	@${RM} ${OBJECTDIR}/_ext/390608725/ECAN1Drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/390608725/ECAN1Drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../can1_drv_dspic33ep/src/ECAN1Drv.c  -o ${OBJECTDIR}/_ext/390608725/ECAN1Drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/390608725/ECAN1Drv.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/453863146/CAN2Interrupt.o: ../../../can2_drv_dspic33ep/src/CAN2Interrupt.c  .generated_files/660c1f250f587815836e1dbf44d88d1c7964f18c.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/453863146" 
	@${RM} ${OBJECTDIR}/_ext/453863146/CAN2Interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/453863146/CAN2Interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../can2_drv_dspic33ep/src/CAN2Interrupt.c  -o ${OBJECTDIR}/_ext/453863146/CAN2Interrupt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/453863146/CAN2Interrupt.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/453863146/ECAN2Config.o: ../../../can2_drv_dspic33ep/src/ECAN2Config.c  .generated_files/88020171cc8438735bb44896135ece9d3e500375.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/453863146" 
	@${RM} ${OBJECTDIR}/_ext/453863146/ECAN2Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/453863146/ECAN2Config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../can2_drv_dspic33ep/src/ECAN2Config.c  -o ${OBJECTDIR}/_ext/453863146/ECAN2Config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/453863146/ECAN2Config.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/453863146/ECAN2Drv.o: ../../../can2_drv_dspic33ep/src/ECAN2Drv.c  .generated_files/409c574de9a158c45bde85757000892c5a0662c9.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/453863146" 
	@${RM} ${OBJECTDIR}/_ext/453863146/ECAN2Drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/453863146/ECAN2Drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../can2_drv_dspic33ep/src/ECAN2Drv.c  -o ${OBJECTDIR}/_ext/453863146/ECAN2Drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/453863146/ECAN2Drv.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/CANOpenStoreParameters.o: ../../../canopen/src/CANOpenStoreParameters.c  .generated_files/5b744f5cd6956304ffacd68d3ce91478ba014c66.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/CANOpenStoreParameters.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/CANOpenStoreParameters.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/CANOpenStoreParameters.c  -o ${OBJECTDIR}/_ext/955687872/CANOpenStoreParameters.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/CANOpenStoreParameters.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/CanNode.o: ../../../canopen/src/CanNode.c  .generated_files/689b960eedc3802d53e96c48c094dcd20190a6df.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/CanNode.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/CanNode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/CanNode.c  -o ${OBJECTDIR}/_ext/955687872/CanNode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/CanNode.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/LSS.o: ../../../canopen/src/LSS.c  .generated_files/773ae5a1062a74a3163620f91025469aedf58279.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/LSS.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/LSS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/LSS.c  -o ${OBJECTDIR}/_ext/955687872/LSS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/LSS.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/NMT.o: ../../../canopen/src/NMT.c  .generated_files/bf91ab4114e745b1f4c8c610370ab75cc540bb22.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/NMT.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/NMT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/NMT.c  -o ${OBJECTDIR}/_ext/955687872/NMT.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/NMT.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/NodeGuard.o: ../../../canopen/src/NodeGuard.c  .generated_files/6808418f5f0fb141a6271b122186bd2e7eef7a9.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/NodeGuard.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/NodeGuard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/NodeGuard.c  -o ${OBJECTDIR}/_ext/955687872/NodeGuard.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/NodeGuard.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/ObjectDict.o: ../../../canopen/src/ObjectDict.c  .generated_files/9834b0500a7292adc1738066ff6af39bf159afae.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/ObjectDict.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/ObjectDict.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/ObjectDict.c  -o ${OBJECTDIR}/_ext/955687872/ObjectDict.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/ObjectDict.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/PDO.o: ../../../canopen/src/PDO.c  .generated_files/eed74b8b9fe96b4a03bcba8501df44781e029efb.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/PDO.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/PDO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/PDO.c  -o ${OBJECTDIR}/_ext/955687872/PDO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/PDO.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/SDO.o: ../../../canopen/src/SDO.c  .generated_files/42df479c776cfef6e16e826b0c40c01425a33b5a.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/SDO.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/SDO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/SDO.c  -o ${OBJECTDIR}/_ext/955687872/SDO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/SDO.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/sync.o: ../../../canopen/src/sync.c  .generated_files/17b76726d0c3fa64b59fd1597349cd56a9a219ab.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/sync.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/sync.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/sync.c  -o ${OBJECTDIR}/_ext/955687872/sync.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/sync.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1260807204/coll_ctrl.o: ../../../../../modules/coll_ctrl/src/coll_ctrl.c  .generated_files/5c1dc15b6105e8c6c4be38493968d4a7c93b7529.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1260807204" 
	@${RM} ${OBJECTDIR}/_ext/1260807204/coll_ctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260807204/coll_ctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../modules/coll_ctrl/src/coll_ctrl.c  -o ${OBJECTDIR}/_ext/1260807204/coll_ctrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1260807204/coll_ctrl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1260807204/object_dictionary.o: ../../../../../modules/coll_ctrl/src/object_dictionary.c  .generated_files/8a8a5f73f982d9c98988a7a0293931477183d459.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1260807204" 
	@${RM} ${OBJECTDIR}/_ext/1260807204/object_dictionary.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260807204/object_dictionary.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../modules/coll_ctrl/src/object_dictionary.c  -o ${OBJECTDIR}/_ext/1260807204/object_dictionary.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1260807204/object_dictionary.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1260807204/sys_cfg.o: ../../../../../modules/coll_ctrl/src/sys_cfg.c  .generated_files/c5b8ea6199fa3823555959bee5a216346105c6ec.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1260807204" 
	@${RM} ${OBJECTDIR}/_ext/1260807204/sys_cfg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260807204/sys_cfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../modules/coll_ctrl/src/sys_cfg.c  -o ${OBJECTDIR}/_ext/1260807204/sys_cfg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1260807204/sys_cfg.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/603503939/CoreSignal.o: ../../../core/src/CoreSignal.c  .generated_files/45dd6759257ebc42fbfeeae69f85e1f9914dd449.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/603503939" 
	@${RM} ${OBJECTDIR}/_ext/603503939/CoreSignal.o.d 
	@${RM} ${OBJECTDIR}/_ext/603503939/CoreSignal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../core/src/CoreSignal.c  -o ${OBJECTDIR}/_ext/603503939/CoreSignal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/603503939/CoreSignal.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/603503939/CoreTimer.o: ../../../core/src/CoreTimer.c  .generated_files/fea5ccf740f353e9fef2a6fa2abae7fc3373552b.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/603503939" 
	@${RM} ${OBJECTDIR}/_ext/603503939/CoreTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/603503939/CoreTimer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../core/src/CoreTimer.c  -o ${OBJECTDIR}/_ext/603503939/CoreTimer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/603503939/CoreTimer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/613093629/dio_drv_dspic33ep128gm604.o: ../../../dio_drv_dspic33ep128gm604/src/dio_drv_dspic33ep128gm604.c  .generated_files/17f0af88a5fe16db00454c3c0773ffb94a8c7f16.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/613093629" 
	@${RM} ${OBJECTDIR}/_ext/613093629/dio_drv_dspic33ep128gm604.o.d 
	@${RM} ${OBJECTDIR}/_ext/613093629/dio_drv_dspic33ep128gm604.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../dio_drv_dspic33ep128gm604/src/dio_drv_dspic33ep128gm604.c  -o ${OBJECTDIR}/_ext/613093629/dio_drv_dspic33ep128gm604.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/613093629/dio_drv_dspic33ep128gm604.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/68587034/flash_driver_dspic33ep.o: ../../../flash_drv_dspic33ep/src/flash_driver_dspic33ep.c  .generated_files/994eedde8fa1db79c52653ab174af43eecf8d970.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/68587034" 
	@${RM} ${OBJECTDIR}/_ext/68587034/flash_driver_dspic33ep.o.d 
	@${RM} ${OBJECTDIR}/_ext/68587034/flash_driver_dspic33ep.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../flash_drv_dspic33ep/src/flash_driver_dspic33ep.c  -o ${OBJECTDIR}/_ext/68587034/flash_driver_dspic33ep.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/68587034/flash_driver_dspic33ep.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/404484135/flashctrl.o: ../../../../../modules/flashctrl/src/flashctrl.c  .generated_files/ec26460989b8e064e383335476597efdc33b2191.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404484135" 
	@${RM} ${OBJECTDIR}/_ext/404484135/flashctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/404484135/flashctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../modules/flashctrl/src/flashctrl.c  -o ${OBJECTDIR}/_ext/404484135/flashctrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/404484135/flashctrl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/404484135/flashctrl_sector.o: ../../../../../modules/flashctrl/src/flashctrl_sector.c  .generated_files/843e0c7adb6e86ccf6c9d59d74088c097503d83a.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404484135" 
	@${RM} ${OBJECTDIR}/_ext/404484135/flashctrl_sector.o.d 
	@${RM} ${OBJECTDIR}/_ext/404484135/flashctrl_sector.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../modules/flashctrl/src/flashctrl_sector.c  -o ${OBJECTDIR}/_ext/404484135/flashctrl_sector.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/404484135/flashctrl_sector.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/613364720/timer_drv_dspic33ep_gm604.o: ../../../timer_drv_dspic33ep_gm604/src/timer_drv_dspic33ep_gm604.c  .generated_files/1cea8fc436039ed27637ff83698d07824486c8a3.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/613364720" 
	@${RM} ${OBJECTDIR}/_ext/613364720/timer_drv_dspic33ep_gm604.o.d 
	@${RM} ${OBJECTDIR}/_ext/613364720/timer_drv_dspic33ep_gm604.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../timer_drv_dspic33ep_gm604/src/timer_drv_dspic33ep_gm604.c  -o ${OBJECTDIR}/_ext/613364720/timer_drv_dspic33ep_gm604.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/613364720/timer_drv_dspic33ep_gm604.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1386528437/app.o: ../../../src/app.c  .generated_files/f278dbde07e5d0611aab76ac7d31401e79dc5504.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/app.c  -o ${OBJECTDIR}/_ext/1386528437/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1386528437/app.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1386528437/can_isr.o: ../../../src/can_isr.c  .generated_files/6e7e00669395089d78821dcc97283c00d6133244.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/can_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/can_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/can_isr.c  -o ${OBJECTDIR}/_ext/1386528437/can_isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1386528437/can_isr.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1386528437/main.o: ../../../src/main.c  .generated_files/16c7e3ce6346d7080e44fac18cb762a24712237f.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/main.c  -o ${OBJECTDIR}/_ext/1386528437/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1386528437/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1386528437/timer_isr.o: ../../../src/timer_isr.c  .generated_files/7f4ad0b1e16a53a1c3f8ba35c734022134b6462f.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/timer_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/timer_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/timer_isr.c  -o ${OBJECTDIR}/_ext/1386528437/timer_isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1386528437/timer_isr.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1386528437/traps.o: ../../../src/traps.c  .generated_files/7d8b843e9bc0f2e717824653be0f4fcddef86dd2.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/traps.c  -o ${OBJECTDIR}/_ext/1386528437/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1386528437/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1361220844/gpio_cfg_el258300.o: ../../../../../board/src/gpio_cfg_el258300.c  .generated_files/68100282494f170795a2b8c7a0739dd16e7606ce.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1361220844" 
	@${RM} ${OBJECTDIR}/_ext/1361220844/gpio_cfg_el258300.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361220844/gpio_cfg_el258300.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../board/src/gpio_cfg_el258300.c  -o ${OBJECTDIR}/_ext/1361220844/gpio_cfg_el258300.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1361220844/gpio_cfg_el258300.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1361220844/nvm_store_el258300.o: ../../../../../board/src/nvm_store_el258300.c  .generated_files/bbd916ada8af98c7a4b8d591de2b35be21df41.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1361220844" 
	@${RM} ${OBJECTDIR}/_ext/1361220844/nvm_store_el258300.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361220844/nvm_store_el258300.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../board/src/nvm_store_el258300.c  -o ${OBJECTDIR}/_ext/1361220844/nvm_store_el258300.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1361220844/nvm_store_el258300.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1361220844/can_cfg_el258300.o: ../../../../../board/src/can_cfg_el258300.c  .generated_files/2eccfe9689556d8e2e328d84825e2ccf09657d66.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1361220844" 
	@${RM} ${OBJECTDIR}/_ext/1361220844/can_cfg_el258300.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361220844/can_cfg_el258300.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../board/src/can_cfg_el258300.c  -o ${OBJECTDIR}/_ext/1361220844/can_cfg_el258300.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1361220844/can_cfg_el258300.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1361220844/sys_init_dspic33ep.o: ../../../../../board/src/sys_init_dspic33ep.c  .generated_files/5c2b51a8c5fe814448e70b1efeb5692af65319d8.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1361220844" 
	@${RM} ${OBJECTDIR}/_ext/1361220844/sys_init_dspic33ep.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361220844/sys_init_dspic33ep.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../board/src/sys_init_dspic33ep.c  -o ${OBJECTDIR}/_ext/1361220844/sys_init_dspic33ep.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1361220844/sys_init_dspic33ep.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/390608725/CANInterrupt.o: ../../../can1_drv_dspic33ep/src/CANInterrupt.c  .generated_files/11590824c486a9d17aaf8dcfbf4d4219fdcd664c.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/390608725" 
	@${RM} ${OBJECTDIR}/_ext/390608725/CANInterrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/390608725/CANInterrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../can1_drv_dspic33ep/src/CANInterrupt.c  -o ${OBJECTDIR}/_ext/390608725/CANInterrupt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/390608725/CANInterrupt.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/390608725/ECAN1Config.o: ../../../can1_drv_dspic33ep/src/ECAN1Config.c  .generated_files/f9ab87373880ad07ba415fde7eb31eeca30f092e.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/390608725" 
	@${RM} ${OBJECTDIR}/_ext/390608725/ECAN1Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/390608725/ECAN1Config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../can1_drv_dspic33ep/src/ECAN1Config.c  -o ${OBJECTDIR}/_ext/390608725/ECAN1Config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/390608725/ECAN1Config.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/390608725/ECAN1Drv.o: ../../../can1_drv_dspic33ep/src/ECAN1Drv.c  .generated_files/8a2e71a3a741490ef88ab4a4115e71553ad56f8d.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/390608725" 
	@${RM} ${OBJECTDIR}/_ext/390608725/ECAN1Drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/390608725/ECAN1Drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../can1_drv_dspic33ep/src/ECAN1Drv.c  -o ${OBJECTDIR}/_ext/390608725/ECAN1Drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/390608725/ECAN1Drv.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/453863146/CAN2Interrupt.o: ../../../can2_drv_dspic33ep/src/CAN2Interrupt.c  .generated_files/f06b9edf7babf0d69129f9a51610eeb9cfeeb66a.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/453863146" 
	@${RM} ${OBJECTDIR}/_ext/453863146/CAN2Interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/453863146/CAN2Interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../can2_drv_dspic33ep/src/CAN2Interrupt.c  -o ${OBJECTDIR}/_ext/453863146/CAN2Interrupt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/453863146/CAN2Interrupt.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/453863146/ECAN2Config.o: ../../../can2_drv_dspic33ep/src/ECAN2Config.c  .generated_files/c93a960ca775d410a833699626779a47439a4405.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/453863146" 
	@${RM} ${OBJECTDIR}/_ext/453863146/ECAN2Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/453863146/ECAN2Config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../can2_drv_dspic33ep/src/ECAN2Config.c  -o ${OBJECTDIR}/_ext/453863146/ECAN2Config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/453863146/ECAN2Config.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/453863146/ECAN2Drv.o: ../../../can2_drv_dspic33ep/src/ECAN2Drv.c  .generated_files/1b564c8aa1c4169c9a8e6e061b34b93767b5d55f.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/453863146" 
	@${RM} ${OBJECTDIR}/_ext/453863146/ECAN2Drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/453863146/ECAN2Drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../can2_drv_dspic33ep/src/ECAN2Drv.c  -o ${OBJECTDIR}/_ext/453863146/ECAN2Drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/453863146/ECAN2Drv.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/CANOpenStoreParameters.o: ../../../canopen/src/CANOpenStoreParameters.c  .generated_files/5b60417d2183d63bdd041b2106572aab135f45e2.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/CANOpenStoreParameters.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/CANOpenStoreParameters.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/CANOpenStoreParameters.c  -o ${OBJECTDIR}/_ext/955687872/CANOpenStoreParameters.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/CANOpenStoreParameters.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/CanNode.o: ../../../canopen/src/CanNode.c  .generated_files/5bb652dc5e6ba14e5783c975394ffa14e1a9188c.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/CanNode.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/CanNode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/CanNode.c  -o ${OBJECTDIR}/_ext/955687872/CanNode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/CanNode.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/LSS.o: ../../../canopen/src/LSS.c  .generated_files/73d88780827db9e9a892e51016661adca6ba44a9.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/LSS.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/LSS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/LSS.c  -o ${OBJECTDIR}/_ext/955687872/LSS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/LSS.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/NMT.o: ../../../canopen/src/NMT.c  .generated_files/d64fca4447cba3a91f20acd74f40dc84108eab5f.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/NMT.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/NMT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/NMT.c  -o ${OBJECTDIR}/_ext/955687872/NMT.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/NMT.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/NodeGuard.o: ../../../canopen/src/NodeGuard.c  .generated_files/e95eafd0c359f7fe163555d4228b15e9e982f684.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/NodeGuard.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/NodeGuard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/NodeGuard.c  -o ${OBJECTDIR}/_ext/955687872/NodeGuard.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/NodeGuard.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/ObjectDict.o: ../../../canopen/src/ObjectDict.c  .generated_files/b6596e0639fc8267c39f972d86623bf7915e690.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/ObjectDict.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/ObjectDict.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/ObjectDict.c  -o ${OBJECTDIR}/_ext/955687872/ObjectDict.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/ObjectDict.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/PDO.o: ../../../canopen/src/PDO.c  .generated_files/c671f9921fcc1229daddb9d0abb2aa61598410cc.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/PDO.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/PDO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/PDO.c  -o ${OBJECTDIR}/_ext/955687872/PDO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/PDO.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/SDO.o: ../../../canopen/src/SDO.c  .generated_files/5281dd8e99030b04ff804336fe6d30bd4186ad85.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/SDO.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/SDO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/SDO.c  -o ${OBJECTDIR}/_ext/955687872/SDO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/SDO.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/955687872/sync.o: ../../../canopen/src/sync.c  .generated_files/7b02e01b3428573f24009d96c6b7731fe0284947.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/955687872" 
	@${RM} ${OBJECTDIR}/_ext/955687872/sync.o.d 
	@${RM} ${OBJECTDIR}/_ext/955687872/sync.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../canopen/src/sync.c  -o ${OBJECTDIR}/_ext/955687872/sync.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/955687872/sync.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1260807204/coll_ctrl.o: ../../../../../modules/coll_ctrl/src/coll_ctrl.c  .generated_files/65b9948370befac66a90221675c6d7630dd51bcf.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1260807204" 
	@${RM} ${OBJECTDIR}/_ext/1260807204/coll_ctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260807204/coll_ctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../modules/coll_ctrl/src/coll_ctrl.c  -o ${OBJECTDIR}/_ext/1260807204/coll_ctrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1260807204/coll_ctrl.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1260807204/object_dictionary.o: ../../../../../modules/coll_ctrl/src/object_dictionary.c  .generated_files/8b953cbd7580bcc48f613a9d59729890f937e395.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1260807204" 
	@${RM} ${OBJECTDIR}/_ext/1260807204/object_dictionary.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260807204/object_dictionary.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../modules/coll_ctrl/src/object_dictionary.c  -o ${OBJECTDIR}/_ext/1260807204/object_dictionary.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1260807204/object_dictionary.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1260807204/sys_cfg.o: ../../../../../modules/coll_ctrl/src/sys_cfg.c  .generated_files/36ee1196de78d4a7a8ff14fb03e196a6eb51f9e3.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1260807204" 
	@${RM} ${OBJECTDIR}/_ext/1260807204/sys_cfg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260807204/sys_cfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../modules/coll_ctrl/src/sys_cfg.c  -o ${OBJECTDIR}/_ext/1260807204/sys_cfg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1260807204/sys_cfg.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/603503939/CoreSignal.o: ../../../core/src/CoreSignal.c  .generated_files/d01ef16dd91d62d44bd285effecebd99056adade.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/603503939" 
	@${RM} ${OBJECTDIR}/_ext/603503939/CoreSignal.o.d 
	@${RM} ${OBJECTDIR}/_ext/603503939/CoreSignal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../core/src/CoreSignal.c  -o ${OBJECTDIR}/_ext/603503939/CoreSignal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/603503939/CoreSignal.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/603503939/CoreTimer.o: ../../../core/src/CoreTimer.c  .generated_files/1a4eb0ee7a7c5383ab0c5a7e2feca40a72f10a07.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/603503939" 
	@${RM} ${OBJECTDIR}/_ext/603503939/CoreTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/603503939/CoreTimer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../core/src/CoreTimer.c  -o ${OBJECTDIR}/_ext/603503939/CoreTimer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/603503939/CoreTimer.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/613093629/dio_drv_dspic33ep128gm604.o: ../../../dio_drv_dspic33ep128gm604/src/dio_drv_dspic33ep128gm604.c  .generated_files/878fb5381459aa215a8f1e524cc16cb696d25684.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/613093629" 
	@${RM} ${OBJECTDIR}/_ext/613093629/dio_drv_dspic33ep128gm604.o.d 
	@${RM} ${OBJECTDIR}/_ext/613093629/dio_drv_dspic33ep128gm604.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../dio_drv_dspic33ep128gm604/src/dio_drv_dspic33ep128gm604.c  -o ${OBJECTDIR}/_ext/613093629/dio_drv_dspic33ep128gm604.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/613093629/dio_drv_dspic33ep128gm604.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/68587034/flash_driver_dspic33ep.o: ../../../flash_drv_dspic33ep/src/flash_driver_dspic33ep.c  .generated_files/8ff2567e9f41ccfe086106719e5377d02a3cf80.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/68587034" 
	@${RM} ${OBJECTDIR}/_ext/68587034/flash_driver_dspic33ep.o.d 
	@${RM} ${OBJECTDIR}/_ext/68587034/flash_driver_dspic33ep.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../flash_drv_dspic33ep/src/flash_driver_dspic33ep.c  -o ${OBJECTDIR}/_ext/68587034/flash_driver_dspic33ep.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/68587034/flash_driver_dspic33ep.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/404484135/flashctrl.o: ../../../../../modules/flashctrl/src/flashctrl.c  .generated_files/ebeb85e0f99e9e810626ea18abefad81bb69e13f.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404484135" 
	@${RM} ${OBJECTDIR}/_ext/404484135/flashctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/404484135/flashctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../modules/flashctrl/src/flashctrl.c  -o ${OBJECTDIR}/_ext/404484135/flashctrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/404484135/flashctrl.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/404484135/flashctrl_sector.o: ../../../../../modules/flashctrl/src/flashctrl_sector.c  .generated_files/ccb1789dddc8060a26ad59555598915bf57e1c09.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404484135" 
	@${RM} ${OBJECTDIR}/_ext/404484135/flashctrl_sector.o.d 
	@${RM} ${OBJECTDIR}/_ext/404484135/flashctrl_sector.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../modules/flashctrl/src/flashctrl_sector.c  -o ${OBJECTDIR}/_ext/404484135/flashctrl_sector.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/404484135/flashctrl_sector.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/613364720/timer_drv_dspic33ep_gm604.o: ../../../timer_drv_dspic33ep_gm604/src/timer_drv_dspic33ep_gm604.c  .generated_files/bd376bd7b9b37df11f0bf1d054152778c71e8a08.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/613364720" 
	@${RM} ${OBJECTDIR}/_ext/613364720/timer_drv_dspic33ep_gm604.o.d 
	@${RM} ${OBJECTDIR}/_ext/613364720/timer_drv_dspic33ep_gm604.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../timer_drv_dspic33ep_gm604/src/timer_drv_dspic33ep_gm604.c  -o ${OBJECTDIR}/_ext/613364720/timer_drv_dspic33ep_gm604.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/613364720/timer_drv_dspic33ep_gm604.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1386528437/app.o: ../../../src/app.c  .generated_files/30a81fc945c840d6bb3a480a4f7c2c24260d3b16.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/app.c  -o ${OBJECTDIR}/_ext/1386528437/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1386528437/app.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1386528437/can_isr.o: ../../../src/can_isr.c  .generated_files/8e41e4303d45e34d8c07e4e354f95bb1ccf2b1ee.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/can_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/can_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/can_isr.c  -o ${OBJECTDIR}/_ext/1386528437/can_isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1386528437/can_isr.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1386528437/main.o: ../../../src/main.c  .generated_files/9e187eb7cadf9fd476c3fdc03bbdd4e6d7d0249b.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/main.c  -o ${OBJECTDIR}/_ext/1386528437/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1386528437/main.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1386528437/timer_isr.o: ../../../src/timer_isr.c  .generated_files/1d098368ab554174d36d987cfbe43a0d09a76528.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/timer_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/timer_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/timer_isr.c  -o ${OBJECTDIR}/_ext/1386528437/timer_isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1386528437/timer_isr.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1386528437/traps.o: ../../../src/traps.c  .generated_files/8313fd198a33c1dc92c82b3203a55e6099196250.flag .generated_files/745e7f33d58063c0bcd3b2c20f4e3bd342da192.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../src/traps.c  -o ${OBJECTDIR}/_ext/1386528437/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1386528437/traps.o.d"      -mno-eds-warn  -g -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -mlarge-code -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/collimator_controller.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../../../board/p33EP128GM604.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/collimator_controller.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc"  -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD4=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/collimator_controller.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../../../../board/p33EP128GM604.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/collimator_controller.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DEL258300 -DCANRX_RPI48_CANTX_RP49 -DdsPIC33GM604 -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"../../../inc" -I"../../../../../modules/interfaces/inc" -I"../../../../../modules/core/inc" -I"../../../../../modules/ids/inc" -I"../../../../../modules/common/inc" -I"../../../../../modules/flashctrl/inc" -I"../../../../../modules/coll_ctrl/inc" -I"../../../timer_interface/inc" -I"../../../canopen/inc" -I"../../../timer_drv_dspic33ep_gm604/inc" -I"../../../can1_drv_dspic33ep/inc" -I"../../../can2_drv_dspic33ep/inc" -I"../../../flash_drv_dspic33ep/inc" -I"../../../dio_drv_dspic33ep128gm604/inc" -I"../../../../../board/inc" -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/collimator_controller.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
