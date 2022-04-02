include(FetchContent)

set(FETCHCONTENT_QUIET OFF)
set(FETCHCONTENT_UPDATES_DISCONNECTED ON)

### Library options ############################################################################

    
###  

FetchContent_Declare(
  f2806x_supp
  GIT_REPOSITORY  https://github.com/ThrowTheSwitch/Unity.git
  GIT_TAG         origin/master
  SOURCE_DIR      ${CMAKE_CURRENT_SOURCE_DIR}/externals/unity
  )
    
FetchContent_GetProperties( f2806x_supp )     
FetchContent_MakeAvailable( f2806x_supp )

if(NOT f2806x_supp_POPULATED)
  FetchContent_Populate(f2806x_supp)
  add_subdirectory(${f2806x_supp_SOURCE_DIR} ${f2806x_supp_BINARY_DIR} EXCLUDE_FROM_ALL)
endif() 
