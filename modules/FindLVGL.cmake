include(FetchContent)

set(FETCHCONTENT_QUIET OFF)
set(FETCHCONTENT_UPDATES_DISCONNECTED ON)

### Library options ############################################################################

# set(MODULES_OPTIONS ON CACHE INTERNAL "Set MODULES_OPTIONS CACHE INTERNAL.") # Template for library spacific options.
    
###  

FetchContent_Declare(
    LVGL
    GIT_REPOSITORY  https://github.com/xsession/lvgl.git
    GIT_TAG         origin/master
    SOURCE_DIR      ${CMAKE_CURRENT_SOURCE_DIR}/../../../external/LVGL
    )
    
FetchContent_GetProperties( LVGL )     
FetchContent_MakeAvailable( LVGL )

if(NOT LVGL_POPULATED)
  FetchContent_Populate(LVGL)
  add_subdirectory(${LVGL_SOURCE_DIR} ${LVGL_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()