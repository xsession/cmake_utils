include(FetchContent)

set(FETCHCONTENT_QUIET OFF)
set(FETCHCONTENT_UPDATES_DISCONNECTED ON)

### Library options ############################################################################

set(UNITY_EXTENSION_FIXTURE ON CACHE INTERNAL "Set UNITY_EXTENSION_FIXTURE CACHE INTERNAL.")
set(UNITY_EXTENSION_MEMORY ON CACHE INTERNAL "Set UNITY_EXTENSION_MEMORY CACHE INTERNAL.")
    
###  

# if (EXISTS ${UNITY_PACKAGE_PATH})
#   set(FETCHCONTENT_FULLY_DISCONNECTED ON)
#   message("Unity is already polulated. Skipping download.")
# else()
#   message("Unity is not yet populated. Downloading...")
# endif()

FetchContent_Declare(
  unity
  GIT_REPOSITORY  https://github.com/ThrowTheSwitch/Unity.git
  GIT_TAG         67ca5c57c9c50cc1580518cc6f822558c0009b1e
  # GIT_TAG         origin/master
  SOURCE_DIR      ${CMAKE_CURRENT_SOURCE_DIR}/unity
  FIND_PACKAGE_ARGS
  )
  
  FetchContent_GetProperties( unity )   
  
  if(NOT unity_POPULATED)
  message("NOT unity_POPULATED")
  # FetchContent_MakeAvailable( unity )
  FetchContent_Populate(unity)
  message("unity_SOURCE_DIR: ->")
  message(${unity_SOURCE_DIR})
  add_subdirectory(${unity_SOURCE_DIR} ${unity_BINARY_DIR} EXCLUDE_FROM_ALL)
else()
  message("unity_POPULATED")
endif() 
  
