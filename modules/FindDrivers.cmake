include(FetchContent)

set(FETCHCONTENT_QUIET OFF)
set(FETCHCONTENT_UPDATES_DISCONNECTED ON)

### Library options ############################################################################

set(DRIVERS_OPTIONS ON CACHE INTERNAL "Set DRIVERS_OPTIONS CACHE INTERNAL.") # Template for library spacific options.
    
###  

FetchContent_Declare(
    Drivers
    GIT_REPOSITORY  https://github.com/xsession/drivers.git
    GIT_TAG         origin/feature/dspic
    SOURCE_DIR      ${CMAKE_CURRENT_SOURCE_DIR}/../../../drivers
)
    
FetchContent_GetProperties( Drivers )     
FetchContent_MakeAvailable( Drivers )

if(NOT Drivers_POPULATED)
  FetchContent_Populate(Drivers)
  add_subdirectory(${Drivers_SOURCE_DIR} ${Drivers_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()