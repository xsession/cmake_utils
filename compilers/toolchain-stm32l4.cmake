cmake_minimum_required(VERSION 3.18 FATAL_ERROR)


add_definitions(-DUSE_HAL_DRIVER -DSTM32F407xx)

# cpu
set(CPU "-mcpu=cortex-m4")

# fpu
set(FPU "-mfpu=fpv4-sp-d16")

# float-abi
set(FLOAT-ABI "-mfloat-abi=hard")

# mcu
set(MCU "${CPU} -mthumb ${FPU} ${FLOAT-ABI}")

set(OPT "-Og")

set(CMAKE_C_FLAGS   "${MCU} ${OPT} -Wall -fdata-sections -ffunction-sections -g -gdwarf-2" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS "${MCU} ${OPT} -Wall -fdata-sections -ffunction-sections -g -gdwarf-2 --std=c++11" CACHE STRING "" FORCE)

set(LDSCRIPT ${CMAKE_CURRENT_LIST_DIR}/STM32F407VGTx_FLASH.ld)

set(CMAKE_EXE_LINKER_FLAGS "${MCU} -specs=nano.specs --specs=nosys.specs -lc -lm -lnosys -T${LDSCRIPT} -Wl,--gc-sections" CACHE STRING "" FORCE)

set(CMAKE_ASM_FLAGS "-x assembler-with-cpp ${MCU} ${OPT} -Wall -fdata-sections -ffunction-sections" CACHE STRING "" FORCE)

# Set target system
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_VERBOSE_MAKEFILE ON)

set(CMAKE_CXX_COMPILER_WORKS 1)
set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_ASM_COMPILER_WORKS 1)

set(toolchain_name "arm-none-eabi")
set(toolchain_prefix ${toolchain_name})
set(CMAKE_C_COMPILER_ID ${toolchain_name})

# Adjust the toolchain directory as per your setup
set(TOOLCHAIN_DIR "/path/to/your/arm/gcc/bin")

message(STATUS "TOOLCHAIN_DIR: -> ${TOOLCHAIN_DIR}")

# Toolchain paths
find_program(TOOLCHAIN_GCC             NAMES   ${toolchain_prefix}-gcc      PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TOOLCHAIN_CXX             NAMES   ${toolchain_prefix}-g++      PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TOOLCHAIN_AS              NAMES   ${toolchain_prefix}-as       PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TOOLCHAIN_AR              NAMES   ${toolchain_prefix}-ar       PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TOOLCHAIN_OBJCOPY         NAMES   ${toolchain_prefix}-objcopy  PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TOOLCHAIN_OBJDUMP         NAMES   ${toolchain_prefix}-objdump  PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TOOLCHAIN_SIZE            NAMES   ${toolchain_prefix}-size     PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)
find_program(TOOLCHAIN_LD              NAMES   ${toolchain_prefix}-ld       PATHS  ${TOOLCHAIN_DIR}    NO_DEFAULT_PATH)

# Set executables
set(CMAKE_C_COMPILER    ${TOOLCHAIN_GCC})
set(CMAKE_CXX_COMPILER  ${TOOLCHAIN_CXX})
set(CMAKE_ASM_COMPILER  ${TOOLCHAIN_AS})
set(CMAKE_AR            ${TOOLCHAIN_AR} CACHE STRING "")
set(CMAKE_OBJCOPY       ${TOOLCHAIN_OBJCOPY} CACHE STRING "")
set(CMAKE_OBJDUMP       ${TOOLCHAIN_OBJDUMP} CACHE STRING "")
set(CMAKE_SIZE          ${TOOLCHAIN_SIZE} CACHE STRING "")
set(CMAKE_RANLIB        ${TOOLCHAIN_AR} CACHE STRING "")

# STM32L476RG specific flags
set(MCU_FLAGS "-mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard")

add_compile_options(
    ${MCU_FLAGS}
    -Og  # optimize and keep debugging info
    -g   # include debugging info
    -Wall
)

link_directories("/path/to/your/arm/gcc/lib")


# include the toolchain resources globaly
include_directories("${TOOLCHAIN_DIR}/../include")
link_directories("${TOOLCHAIN_DIR}/../lib")