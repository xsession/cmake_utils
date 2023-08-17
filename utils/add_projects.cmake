
# cmake_minimum_required(VERSION 3.19 FATAL_ERROR)

# # Include build functions from Pico SDK
# set(PICO_SDK_PATH ${CMAKE_CURRENT_LIST_DIR}/externals/drivers/peripheria_drivers/raspberry/_man_supp_libs/pico-sdk)
# include(${PICO_SDK_PATH}/external/pico_sdk_import.cmake)
# # include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)

# project("Platform-project" C CXX ASM)

# message(STATUS "
# ----------------------> Platform-project <-----------------------------------
# ")

# set(PLATFORM_PROJECT_LOCATION ${PROJECT_SOURCE_DIR})
# list(APPEND CMAKE_MODULE_PATH "${PLATFORM_PROJECT_LOCATION}/externals/chsm/languages/c/cmake_utils")

# pico_sdk_init()

# # Generate compile_command.json to make it easier to work with clang based tools
# set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# set(CHSM_ENABLED ON)

# add_subdirectory(externals/chsm/languages/c)
# add_subdirectory(app/paper_dispenser)
# add_subdirectory(boards)
# add_subdirectory(externals/drivers)

# message(STATUS "Using toolchain file: ${CMAKE_TOOLCHAIN_FILE}.")

# add_definitions(PICO_DEOPTIMIZED_DEBUG=1)


function(add_super_project)
    set(options)
    set(args NAME)
    set(list_args SUBDIRECTORIES GLOBAL_DEFINES GLOBAL_COMPILE_OPTION TOOLCHAIN_FILE_PATH CMAKE_UTILS_PATH UNITY_PATH BUILD_TEST_ENABLE CMAKE_VERSION)
    cmake_parse_arguments(
        PARSE_ARGV 0
        super_project
        "${options}"
        "${args}" 
        "${list_args}"
        )

    cmake_minimum_required(VERSION ${super_project_CMAKE_VERSION} FATAL_ERROR)

    # Include build functions from Pico SDK
    set(PICO_SDK_PATH ${CMAKE_CURRENT_LIST_DIR}/externals/drivers/peripheria_drivers/raspberry/_man_supp_libs/pico-sdk)
    include(${PICO_SDK_PATH}/external/pico_sdk_import.cmake)
    # include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)

    project("Platform-project" C CXX ASM)

    message(STATUS "
    ----------------------> Platform-project <-----------------------------------
    ")

    # Generate compile_command.json to make it easier to work with clang based tools
    set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

    if(${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_CURRENT_SOURCE_DIR})
        message(STATUS "This ${super_project_NAME} is the top-level project.")
    
        list(APPEND CMAKE_MODULE_PATH "${super_project_CMAKE_UTILS_PATH}")
        include(cmake_utils)
    
        set(DEBUG ON)
        option(BUILD_TESTS ON)
    else()
        message(STATUS "This ${super_project_NAME} is NOT the top-level project.")
    endif()
    
    
    message(STATUS "
    ----------------------> ${super_project_NAME} <-----------------------------------
    ")
    
    if(${super_project_BUILD_TEST_ENABLE})
        message(STATUS "----------> Enabled the tests in ${super_project_NAME}! <-------------------")
        enable_testing()
        set(UNITY_EXTENSION_FIXTURE ON CACHE INTERNAL "Set UNITY_EXTENSION_FIXTURE CACHE INTERNAL.")
        set(UNITY_EXTENSION_MEMORY ON CACHE INTERNAL "Set UNITY_EXTENSION_MEMORY CACHE INTERNAL.")
        
        add_subdirectory(${super_project_UNITY_PATH})
    endif()
endfunction()


# cmake_minimum_required(VERSION 3.19 FATAL_ERROR)

# project(
#     "Paper_dispenser"
#     VERSION 0.0.1
#     DESCRIPTION "Paper dispenser"
#     HOMEPAGE_URL "https://github.com/xsession/paper_dispenser.git"
#     LANGUAGES C CXX ASM
# )
# message(STATUS "
# ----------------------> Paper_dispenser <-----------------------------------
# ")

# add_subdirectory(paper_dispenser)


function(add_sub_project)
    set(options)
    set(args NAME)
    set(list_args SUBDIRECTORIES VERSION HOME_PAGE DESCRIPTION )
    cmake_parse_arguments(
        PARSE_ARGV 0
        sub_project
        "${options}"
        "${args}" 
        "${list_args}"
        )

    cmake_minimum_required(VERSION 3.19 FATAL_ERROR)

    project(
        ${sub_project_NAME}
        VERSION ${sub_project_VERSION}
        DESCRIPTION ${sub_project_DESCRIPTION}
        HOMEPAGE_URL ${sub_project_HOME_PAGE}
        LANGUAGES C CXX ASM
    )
    message(STATUS "
    ----------------------> ${sub_project_NAME} <-----------------------------------
    ")

    foreach(subdir_name IN LISTS sub_project_SUBDIRECTORIES)
        add_subdirectory(${subdir_name})
        message("--------> subdir_name: ${subdir_name}")
    endforeach()

endfunction()

