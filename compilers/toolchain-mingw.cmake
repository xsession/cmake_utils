cmake_minimum_required(VERSION 3.18 FATAL_ERROR)

# set target system
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_VERSION  1)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

if(MINGW OR CYGWIN OR WIN32)
    set(UTIL_SEARCH_CMD where)
elseif(UNIX OR APPLE)
    set(UTIL_SEARCH_CMD which)
endif()

set(toolchain_name "gcc")
set(toolchain_nickname "mingw_toolchain")
set(CMAKE_C_COMPILER_ID ${toolchain_name})

# Check if MINGW_TOOLCHAIN_PATH is set
if(NOT DEFINED MINGW_TOOLCHAIN_PATH)
    message(FATAL_ERROR "MINGW_TOOLCHAIN_PATH is not set!")
endif()

# Check if M3_TOOLCHAIN_PATH is a valid path
if(NOT EXISTS ${MINGW_TOOLCHAIN_PATH})
    message(FATAL_ERROR "MINGW_TOOLCHAIN_PATH does not point to a valid path!")
endif()

set(TOOLCHAIN_DIR "$ENV{MINGW_TOOLCHAIN_PATH}")

find_program(toolchain NAMES ${toolchain_name} PATHS ${TOOLCHAIN_DIR} NO_DEFAULT_PATH)
if(toolchain)
  execute_process(COMMAND ${CMAKE_COMMAND} -E cmake_echo_color --blue --bold "Find tolchain as ${TOOLCHAIN_DIR}")
  message(STATUS "TOOLCHAIN_DIR: -> ${TOOLCHAIN_DIR}")
  get_filename_component(PARENT_TOOLCHAIN_DIR ${TOOLCHAIN_DIR} DIRECTORY)
  message(STATUS "PARENT_TOOLCHAIN_DIR: -> ${PARENT_TOOLCHAIN_DIR}")
else()
  execute_process(COMMAND ${CMAKE_COMMAND} -E cmake_echo_color --red --bold "    Didn't find toolchain!
  It's possible you forget to add it to the system PATH variable.")
  message(FATAL_ERROR "")
endif()

set(CMAKE_FIND_ROOT_PATH "${TOOLCHAIN_DIR}")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# toolchain paths
find_program(CUSTOM_GCC             NAMES   gcc       PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(CUSTOM_CXX             NAMES   gcc       PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(CUSTOM_AS              NAMES   gcc       PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(CUSTOM_AR              NAMES   gcc-ar    PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(CUSTOM_OBJCOPY         NAMES   objcopy   PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(CUSTOM_OBJDUMP         NAMES   objdump   PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(CUSTOM_SIZE            NAMES   size      PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(CUSTOM_LD              NAMES   ld        PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)

# set executables settings
set(CMAKE_C_COMPILER    ${CUSTOM_GCC})
set(CMAKE_CXX_COMPILER  ${CUSTOM_CXX})
set(AS                  ${CUSTOM_AS})
set(AR                  ${CUSTOM_AR})
set(OBJCOPY             ${CUSTOM_OBJCOPY})
set(OBJDUMP             ${CUSTOM_OBJDUMP})
set(SIZE                ${CUSTOM_SIZE})
set(LD                  ${CUSTOM_LD})

add_definitions(
)

add_compile_options(
)

include_directories("${TOOLCHAIN_DIR}/../include")
link_directories("${TOOLCHAIN_DIR}/../lib")