include(FetchContent)

set(FETCHCONTENT_QUIET OFF)
set(FETCHCONTENT_UPDATES_DISCONNECTED ON)

### Library options ############################################################################

# set(MODULES_OPTIONS ON CACHE INTERNAL "Set MODULES_OPTIONS CACHE INTERNAL.") # Template for library spacific options.
    
###  

FetchContent_Declare(
    Bootloaders
    GIT_REPOSITORY  https://github.com/xsession/bootloaders.git
    GIT_TAG         origin/main
    SOURCE_DIR      ${CMAKE_CURRENT_SOURCE_DIR}/../../../external/bootloaders
    )
    
FetchContent_GetProperties( Bootloaders )     
FetchContent_MakeAvailable( Bootloaders )

if(NOT Bootloaders_POPULATED)
  FetchContent_Populate(Bootloaders)
  add_subdirectory(${Bootloaders_SOURCE_DIR} ${Bootloaders_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()