cmake_minimum_required(VERSION 3.18 FATAL_ERROR)

# set target system
set(CMAKE_SYSTEM_NAME GENERIC)
set(CMAKE_SYSTEM_PROCESSOR xc16)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_VERBOSE_MAKEFILE ON)

set(CMAKE_CXX_COMPILER_WORKS 1)
set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_ASM_COMPILER_WORKS 1)

set(toolchain_name "xc16")
set(toolchain_prefix ${toolchain_name})
set(CMAKE_C_COMPILER_ID ${toolchain_name})

# Check if XC16_TOOLCHAIN_PATH is set
if(NOT DEFINED XC16_TOOLCHAIN_PATH)
    message(FATAL_ERROR "XC16_TOOLCHAIN_PATH is not set!")
endif()

# Check if M3_TOOLCHAIN_PATH is a valid path
if(NOT EXISTS ${XC16_TOOLCHAIN_PATH})
    message(FATAL_ERROR "XC16_TOOLCHAIN_PATH does not point to a valid path!")
endif()

set(TOOLCHAIN_DIR "$ENV{XC16_TOOLCHAIN_PATH}")

message(STATUS "TOOLCHAIN_DIR: -> ${TOOLCHAIN_DIR}")
get_filename_component(PARENT_TOOLCHAIN_DIR ${TOOLCHAIN_DIR} DIRECTORY)
message(STATUS "PARENT_TOOLCHAIN_DIR: -> ${PARENT_TOOLCHAIN_DIR}")

set(CMAKE_FIND_ROOT_PATH "${TOOLCHAIN_DIR}")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# toolchain paths
find_program(TOOLCHAIN_GCC             NAMES   ${toolchain_prefix}-gcc      PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TOOLCHAIN_CXX             NAMES   ${toolchain_prefix}-gcc      PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TOOLCHAIN_AS              NAMES   ${toolchain_prefix}-as       PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TOOLCHAIN_AR              NAMES   ${toolchain_prefix}-ar       PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TOOLCHAIN_OBJCOPY         NAMES   ${toolchain_prefix}-objcopy  PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TOOLCHAIN_OBJDUMP         NAMES   ${toolchain_prefix}-objdump  PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TOOLCHAIN_SIZE            NAMES   ${toolchain_prefix}-bin2hex  PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TOOLCHAIN_LD              NAMES   ${toolchain_prefix}-ld       PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)

# set executables settings
set(CMAKE_C_COMPILER    ${TOOLCHAIN_GCC})
set(CMAKE_CXX_COMPILER  ${TOOLCHAIN_CXX})
set(AS                  ${TOOLCHAIN_AS})
set(AR                  ${TOOLCHAIN_AR})
set(OBJCOPY             ${TOOLCHAIN_OBJCOPY})
set(OBJDUMP             ${TOOLCHAIN_OBJDUMP})
set(SIZE                ${TOOLCHAIN_SIZE})
set(LD                  ${TOOLCHAIN_LD})

# set the default C standard manually this is required by `Compiler/Gnu-C`
set(CMAKE_C_STANDARD_COMPUTED_DEFAULT 99)

# include the toolchain resources globaly
include_directories("${TOOLCHAIN_DIR}/../include")
link_directories("${TOOLCHAIN_DIR}/../lib")

# add_compile_options(
#   -c
#   -mcpu=${MCU_MODEL}
#   -O0
#   -omf=elf
#   -g
#   -mlarge-code
#   -mlarge-data
#   -mno-eds-warn
#   -no-legacy-libc
#   -MMD
#   -MF
#   -msmart-io=1
#   -Wall
#   -msfr-warn=off)


