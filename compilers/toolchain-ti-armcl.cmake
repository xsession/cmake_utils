cmake_minimum_required(VERSION 3.18 FATAL_ERROR)

# set target system
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_VERSION  1)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(CPU_ARCHITECTURE M3)
# Generate compile_command.json to make it easier to work with clang based tools
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(toolchain_name "armcl")
set(CMAKE_C_COMPILER_ID ${toolchain_name})

# # Check if M3_TOOLCHAIN_PATH is set
# if(NOT DEFINED M3_TOOLCHAIN_PATH)
#     message(FATAL_ERROR "M3_TOOLCHAIN_PATH is not set!")
# endif()

# # Check if M3_TOOLCHAIN_PATH is a valid path
# if(NOT EXISTS ${M3_TOOLCHAIN_PATH})
#     message(FATAL_ERROR "M3_TOOLCHAIN_PATH does not point to a valid path!")
# endif()

set(TOOLCHAIN_DIR "$ENV{M3_TOOLCHAIN_PATH}")

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
find_program(TI_GCC             NAMES   armcl    PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TI_CXX             NAMES   armcl    PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TI_AS              NAMES   armcl    PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TI_AR              NAMES   armar    PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TI_OBJCOPY         NAMES   armofd   PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TI_OBJDUMP         NAMES   armhex   PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TI_SIZE            NAMES   armsize  PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TI_LD              NAMES   armcl    PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)

# set executables settings
set(CMAKE_C_COMPILER    ${TI_GCC})
set(CMAKE_CXX_COMPILER  ${TI_CXX})
set(AS                  ${TI_AS})
set(AR                  ${TI_AR})
set(OBJCOPY             ${TI_OBJCOPY})
set(OBJDUMP             ${TI_OBJDUMP})
set(SIZE                ${TI_SIZE})
set(LD                  ${TI_LD})

add_definitions(
  -DOD_EXTENSION
  -DFPGA_PWM
  -D_RADIUS_INTERFACE_ACTIVE
  -DNODEBUG
  -DBOARD_EL_24_02_03
  -D_FLASH
  -DFPGA_TEST)

add_compile_options(
    -mv7M3
    --code_state=16
    -me
    -O2
    --c11
    --gcc
    --diag_warning=225
    --diag_wrap=off
    --display_error_number
    --gen_func_subsections=on
    --abi=eabi
    --ual )

    include_directories("${TOOLCHAIN_DIR}/../include")