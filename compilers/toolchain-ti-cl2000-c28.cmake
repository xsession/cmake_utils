cmake_minimum_required(VERSION 3.18 FATAL_ERROR)

# set target system
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_VERSION  1)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(CMAKE_C_USE_RESPONSE_FILE_FOR_LIBRARIES 1)
set(CMAKE_CXX_USE_RESPONSE_FILE_FOR_LIBRARIES 1)
set(CMAKE_C_USE_RESPONSE_FILE_FOR_OBJECTS 1)
set(CMAKE_CXX_USE_RESPONSE_FILE_FOR_OBJECTS 1)
set(CMAKE_C_USE_RESPONSE_FILE_FOR_INCLUDES 1)
set(CMAKE_CXX_USE_RESPONSE_FILE_FOR_INCLUDES 1)
set(CMAKE_C_RESPONSE_FILE_LINK_FLAG "@")
set(CMAKE_CXX_RESPONSE_FILE_LINK_FLAG "@")

if(MINGW OR CYGWIN OR WIN32)
    set(UTIL_SEARCH_CMD where)
elseif(UNIX OR APPLE)
    set(UTIL_SEARCH_CMD which)
endif()

set(CPU_ARCHITECTURE c2000)
# Generate compile_command.json to make it easier to work with clang based tools
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(toolchain_name "cl2000")
set(CMAKE_C_COMPILER_ID ${toolchain_name})

# # Check if C28_TOOLCHAIN_PATH is set
# if(NOT DEFINED C28_TOOLCHAIN_PATH)
#     message(FATAL_ERROR "C28_TOOLCHAIN_PATH is not set!")
# endif()

# # Check if M3_TOOLCHAIN_PATH is a valid path
# if(NOT EXISTS ${C28_TOOLCHAIN_PATH})
#     message(FATAL_ERROR "C28_TOOLCHAIN_PATH does not point to a valid path!")
# endif()

set(TOOLCHAIN_DIR "$ENV{C28_TOOLCHAIN_PATH}")

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

set(CMAKE_FIND_ROOT_PATH "${TOOLCHAIN_DIR}") # path/bin
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# toolchain paths
find_program(TI_GCC             NAMES   cl2000    PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TI_CXX             NAMES   cl2000    PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TI_AS              NAMES   cl2000    PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TI_AR              NAMES   ar2000    PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TI_OBJCOPY         NAMES   ofd2000   PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TI_OBJDUMP         NAMES   hex2000   PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
# find_program(TI_SIZE            NAMES   size2000  PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TI_LD              NAMES   cl2000    PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)

# set executables settings
set(CMAKE_C_COMPILER    ${TI_GCC})
set(CMAKE_CXX_COMPILER  ${TI_CXX})
set(AS                  ${TI_AS})
set(AR                  ${TI_AR})
set(OBJCOPY             ${TI_OBJCOPY})
set(OBJDUMP             ${TI_OBJDUMP})
# set(SIZE                ${TI_SIZE})
set(LD                  ${TI_LD})

add_definitions(
    -D_INLINE
    -DNO_PROFILING
    -DFPGA_PWM
    -DFPGA_TEST
    -DBOARD_EL_24_02_03)

add_compile_options(
    -v28
    -ml
    -mt
    --float_support=fpu32
    --vcu_support=vcu0
    -O2
    --c99
    --diag_warning=225
    --diag_wrap=off
    --display_error_number
    --ramfunc=on
    --abi=coffabi )

include_directories("${TOOLCHAIN_DIR}/../include")
link_directories("${TOOLCHAIN_DIR}/../lib")