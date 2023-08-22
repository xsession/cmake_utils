.. sectnum::
   :start: 4

Examples
+++++++++

add_module_lib
===============

.. code-block:: text

   add_module_lib(
         NAME 
                  sht30
         PACKAGE
                  chsm
         SOURCE
                  src/sht30.c
                  src/sht30_functions.c
         INCLUDE 
                  inc
         LINK 
                  chsm::i2c_master
                  signal_classes_ext_modules
         DEFINES 
                  NDEBUG
         STANDARD
                  11
   )

add_module_executable
======================

.. code-block:: text

   add_module_executable(
      NAME fan_controller
      SOURCE 
         src/appstart.asm
         src/app_i2c.c
         src/atomic_functions.c
         src/can.c
         src/crc.c
         src/fan_controller.c
         src/freq_measure.c
         src/gpio.c
         src/isr.c
         src/main.c
         src/object_dictionary.c
         src/task.c
         src/timer.c
         libs/logserver/src/log_server.c
      INCLUDE 
         inc
         libs/logserver/inc
      LINK 
         board
         can
         core
         ext_wdt
         dio_driver_c28
         flash
         mcu_debug
         i2c_driver_f2806x
         sht30
         median_filter
         log_svr_nir
         log_com_co
         paramstore
         chsm::crf
         chsm::lm73 
         platform::base_lib
      LINK_OPTION
         -v28 
         -ml 
         -mt 
         --cla_support=cla0 
         --float_support=fpu32 
         --vcu_support=vcu0 
         --map_file=${CMAKE_BINARY_DIR}/fan_controller.map
         --stack_size=0x300 
         --warn_sections 
         --diag_wrap=off 
         --no_rpt
         --reread_libs 
         --display_error_number
         --xml_link_info=${CMAKE_BINARY_DIR}/fan_controller_linkInfo.xml  
         --rom_model 
         "${PROJECT_SOURCE_DIR}/fan-controller/.project/ccs_f28069/F28069_FLASH.cmd" 
         "${PROJECT_SOURCE_DIR}/../../drivers/libs/ti/device_support/f2806x/headers/cmd/F2806x_Headers_nonBIOS.cmd"  
      SUFFIX
         ".out"
      DEFINES 
         NDEBUG
         OD_EXTENSION
         MBOX_TIMESTAMP_REQUIRED
      STANDARD
   )

add_module_interface_lib
=========================

.. code-block:: text

   add_module_interface_lib(
      NAME 
         signal_classes_ext_modules
      PACKAGE
         app 
      INCLUDE 
         inc
      LINK
         signal_classes_modules
      LINK_DIR 
      DEFINES 
      STANDARD
         11
         )

add_module_test
================

.. code-block:: text

   add_module_test(
      NAME
         median_filter_test 
      SOURCE 
         tsrc/main.c
         tsrc/ut_median_filter_test.c
      INCLUDE 
         tinc
      LINK 
         unity
         median_filter
      DEFINES
         NDEBUG 
      STANDARD
         11
   ) 



