include(FetchContent)

set(FETCHCONTENT_QUIET OFF)
set(FETCHCONTENT_UPDATES_DISCONNECTED ON)

### Library options ############################################################################

set(CHSM_SIGNAL_CLASSES_H ${SIGNAL_CLASSES_H} CACHE INTERNAL "Set CHSM_SIGNAL_CLASSES_H with local path.") # Template for library spacific options.
 # set(CHSM_SIGNAL_CLASSES_H "C:/Users/livanyi/Desktop/WORK/GIT/mcu_el-26-72-00/app/fan-controller/fan-controller/inc/signal_classes.h")   
###  

FetchContent_Declare(
    Chsm
    GIT_REPOSITORY  https://github.com/xsession/chsm.git
    GIT_TAG         origin/master
    SOURCE_DIR      ${CMAKE_CURRENT_SOURCE_DIR}/chsm
    )
    
FetchContent_GetProperties( chsm )     
FetchContent_MakeAvailable( chsm )

if(NOT chsm_POPULATED)
  FetchContent_Populate(chsm)
  add_subdirectory(${chsm_SOURCE_DIR} ${chsm_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()