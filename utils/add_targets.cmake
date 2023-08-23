cmake_minimum_required(VERSION 3.19)

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

set(standard 11)

########################  Static lib target  ############################ 
function(add_module_lib)
    set(options)
    set(args NAME)
    set(list_args PACKAGE SOURCE INCLUDE LINK DEFINES COMPILE_OPTION STANDARD)
    cmake_parse_arguments(
        PARSE_ARGV 0
        lib
        "${options}"
        "${args}" 
        "${list_args}"
        )

    # if(NOT TARGET crf AND DEFINED CHSM_INCLUDED)
    # message(STATUS "crf not exists.")
    # unset(CHSM_INCLUDED CACHE)
    # endif()

    add_library(${lib_NAME} STATIC
        ${lib_SOURCE}
    )

    add_library(${lib_PACKAGE}::${lib_NAME} ALIAS ${lib_NAME})

    target_compile_definitions(${lib_NAME} PRIVATE 
        ${lib_DEFINES}
    )
  
    target_compile_options(${lib_NAME} PRIVATE 
        ${lib_COMPILE_OPTION}
    )

    target_link_libraries(${lib_NAME} PUBLIC
        ${lib_LINK}
    )

    target_include_directories(${lib_NAME}
        PUBLIC
            $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/${lib_INCLUDE}>
            $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${lib_NAME}>
    )

    if(EXISTS lib_STANDARD)
        set_target_properties(${lib_NAME}
            PROPERTIES 
            C_STANDARD          ${standard}
            C_STANDARD_REQUIRED ON
        )
    endif()

    if(CHSM_BUILD_TESTS OR BUILD_TESTS)
        enable_testing()
        if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/test)
            add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/test)
        else()
            message(" !!_!!_!! Test directory doesn't exist in ${lib_NAME} library!")
        endif()
    endif()

	diagnostic(${lib_NAME})

endfunction()

########################  Executible target  ############################ 
function(add_module_executable)
set(options)
    set(args NAME)
    set(list_args SOURCE INCLUDE LINK LINK_OPTION SUFFIX DEFINES STANDARD)
    cmake_parse_arguments(
        PARSE_ARGV 0
        exec
        "${options}"
        "${args}" 
        "${list_args}"
        )

    add_executable(${exec_NAME}
        ${exec_SOURCE}
    )

    # if(EXISTS exec_DEFINES AND EXISTS ${exec_DEFINES})
        target_compile_definitions(${exec_NAME} PRIVATE 
        ${exec_DEFINES}
        )
    # endif()
    
    # if(EXISTS exex_LINK_OPTION AND EXISTS ${exex_LINK_OPTION})
        target_link_options(${exec_NAME} PRIVATE
        ${exex_LINK_OPTION}
        -Wl,-Map=${PROJECT_BINARY_DIR}/${exec_NAME}.map   
        )
    # endif()
    
    # if(EXISTS exec_LINK)
        target_link_libraries(${exec_NAME} PUBLIC
        ${exec_LINK}
        )
    # endif()

    # if(EXISTS exec_INCLUDE AND EXISTS ${exec_INCLUDE})
        target_include_directories(${exec_NAME}
            PUBLIC
                $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/${exec_INCLUDE}>
                $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${exec_NAME}>
        )
    # endif()

    # if(EXISTS exec_SUFFIX AND EXISTS ${exec_SUFFIX})
        # set_target_properties(${exec_NAME} PROPERTIES SUFFIX ${exec_SUFFIX})
    # endif()

    if(EXISTS exec_STANDARD AND EXISTS ${exec_STANDARD})
        set_target_properties(${exec_NAME}
            PROPERTIES 
            C_STANDARD          ${exec_STANDARD}
            C_STANDARD_REQUIRED ON
        )
    endif()

    if(CHSM_BUILD_TESTS OR BUILD_TESTS)
        enable_testing()
        if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/test)
            add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/test)
        else()
            message(" !!_!!_!! Test directory doesn't exist in ${exec_NAME} executable!")
        endif()
    endif()

	diagnostic(${exec_NAME})

endfunction()

########################  Interface lib target ############################ 
function(add_module_interface_lib)
    set(options)
    set(args NAME)
    set(list_args PACKAGE INCLUDE LINK LINK_DIR DEFINES STANDARD)
    cmake_parse_arguments(
        PARSE_ARGV 0
        lib_if
        "${options}"
        "${args}" 
        "${list_args}"
        ) 

    message(STATUS "")

    add_library(${lib_if_NAME} INTERFACE)

    target_link_libraries(${lib_if_NAME} INTERFACE ${lib_if_LINK})

    target_compile_definitions(${lib_if_NAME} INTERFACE ${lib_if_DEFINES})

    target_link_directories(${lib_if_NAME} INTERFACE ${lib_if_LINK_DIR})

    target_include_directories(${lib_if_NAME} INTERFACE
            $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/${lib_if_INCLUDE}>
            $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${lib_if_NAME}>
    )
    
    if(EXISTS ${lib_if_STANDARD})
        set_target_properties(${lib_if_NAME}
            PROPERTIES 
            C_STANDARD          ${lib_if_STANDARD}
            C_STANDARD_REQUIRED ON
        )
    endif()

    if(CHSM_BUILD_TESTS OR BUILD_TESTS)
    enable_testing()
    if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/test)
        add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/test)
    else()
        message(" !!_!!_!! Test directory doesn't exist in ${lib_if_NAME} executable!")
    endif()
    endif()

    message("Target ${lib_NAME} location ${CMAKE_CURRENT_SOURCE_DIR}")
    diagnostic(${lib_if_NAME})
endfunction()

########################  Test target  ############################ 
function(add_module_test)
    set(options)
    set(args NAME)
    set(list_args SOURCE INCLUDE LINK DEFINES COMPILE_OPTION STANDARD)
    cmake_parse_arguments(
        PARSE_ARGV 0
        test
        "${options}"
        "${args}" 
        "${list_args}"
        )

    project(${test_NAME})

    add_executable(${test_NAME} 
        ${test_SOURCE}
    )

    target_compile_definitions(${test_NAME} PRIVATE 
        ${test_DEFINES}
    )

    target_compile_options(${test_NAME} PRIVATE 
    ${test_COMPILE_OPTION}
    )

    target_link_options(${test_NAME} PRIVATE
    -Wl,-Map=${test_NAME}.map   
    )

    target_link_libraries(${test_NAME} PUBLIC
        ${test_LINK}
    )

    target_include_directories(${test_NAME}
        PUBLIC
            $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/${test_INCLUDE}>
            $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${test_NAME}>
    )

    # if(EXISTS ${test_STANDARD})
    #     message("test_STANDARD: > ${test_STANDARD}")
    #     set_target_properties(${test_NAME}
    #     PROPERTIES 
    #     C_STANDARD          ${standard}
    #     # C_STANDARD          ${test_STANDARD}
    #     C_STANDARD_REQUIRED ON
    #     )
    # else()
    #     message("not exists test_STANDARD: > ${test_STANDARD}")
    #     set_target_properties(${test_NAME}
    #     PROPERTIES 
    #     C_STANDARD       ${standard}  
    #     C_STANDARD_REQUIRED ON
    # )
    # endif()

    set_property(TARGET ${test_NAME} PROPERTY ECLIPSE_GENERATE_SOURCE_PROJECT ON)
    set_property(TARGET ${test_NAME} PROPERTY ECLIPSE_GENERATE_LINKED_RESOURCES ON)

    add_test(
        NAME ${test_NAME}
        COMMAND ${test_NAME} -v)


	diagnostic(${test_NAME})
endfunction()