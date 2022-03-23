include(FetchContent)

set(FETCHCONTENT_QUIET OFF)
set(FETCHCONTENT_UPDATES_DISCONNECTED ON)

### Library options ############################################################################

set(MODULES_OPTIONS ON CACHE INTERNAL "Set MODULES_OPTIONS CACHE INTERNAL.") # Template for library spacific options.
    
###  

FetchContent_Declare(
    Modules
    GIT_REPOSITORY  https://github.com/xsession/logic_modules.git
    GIT_TAG         origin/main
    SOURCE_DIR      ${CMAKE_CURRENT_SOURCE_DIR}/../../../logic_modules
    )
    
FetchContent_GetProperties( Modules )     
FetchContent_MakeAvailable( Modules )

if(NOT Modules_POPULATED)
  FetchContent_Populate(Modules)
  add_subdirectory(${Modules_SOURCE_DIR} ${Modules_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()