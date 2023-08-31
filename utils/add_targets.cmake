cmake_minimum_required(VERSION 3.19)

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

set(standard 11)

########################  Static lib target  ############################ 
function(add_module_lib)
    set(options)
    set(args NAME PACKAGE STANDARD)
    set(list_args SOURCE INCLUDE LINK DEFINES COMPILE_OPTION TOOLCHAIN_OPTION)
    cmake_parse_arguments(
        PARSE_ARGV 0
        lib
        "${options}"
        "${args}" 
        "${list_args}"
        )

    set(supported_toolchain FALSE)

    if(lib_TOOLCHAIN_OPTION)
        foreach(toolchain_opt IN LISTS lib_TOOLCHAIN_OPTION)
            if(${toolchain_opt} STREQUAL ${toolchain_name})
                set(supported_toolchain TRUE)
            else()
                message("Target ${lib_NAME} not support this compiler: ------------> ${toolchain_opt}")
            endif()
        endforeach()
    else()
        set(supported_toolchain TRUE)
    endif()

    if(${supported_toolchain})

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

        foreach(include_name IN LISTS lib_INCLUDE)
            target_include_directories(${lib_NAME} PUBLIC
                    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/${include_name}>
                    $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${lib_NAME}>
            )
        endforeach()

        if(EXISTS lib_STANDARD)
            set_target_properties(${lib_NAME}
                PROPERTIES 
                C_STANDARD          ${standard}
                C_STANDARD_REQUIRED ON
            )
        endif()

        if(CHSM_BUILD_TESTS OR BUILD_TESTS)
            if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/test)
                add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/test)
            else()
                message(" !!_!!_!! Test directory doesn't exist in ${lib_NAME} library!")
            endif()
        endif()

        diagnostic(${lib_NAME})

    endif()
endfunction()

########################  Executible target  ############################ 
function(add_module_executable)
set(options)
    set(args NAME SUFFIX STANDARD)
    set(list_args SOURCE INCLUDE LINK LINK_OPTION DEFINES TOOLCHAIN_OPTION)
    cmake_parse_arguments(
        PARSE_ARGV 0
        exec
        "${options}"
        "${args}" 
        "${list_args}"
        )

    set(supported_toolchain FALSE)

    if(exec_TOOLCHAIN_OPTION)
        foreach(toolchain_opt IN LISTS exec_TOOLCHAIN_OPTION)
            if(${toolchain_opt} STREQUAL ${toolchain_name})
                set(supported_toolchain TRUE)
            else()
                message("Target ${exec_NAME} not support this compiler: ------------> ${toolchain_opt}")
            endif()
        endforeach()
    else()
        set(supported_toolchain TRUE)
    endif()

    if(${supported_toolchain})

        add_executable(${exec_NAME}
            ${exec_SOURCE}
        )

        target_compile_definitions(${exec_NAME} PRIVATE 
        ${exec_DEFINES}
        )

        target_link_options(${exec_NAME} PRIVATE
        ${exex_LINK_OPTION}
        -Wl,-Map=${PROJECT_BINARY_DIR}/${exec_NAME}.map   
        )

        target_link_libraries(${exec_NAME} PUBLIC
        ${exec_LINK}
        )

        foreach(include_name IN LISTS exec_INCLUDE)
            target_include_directories(${exec_NAME} PUBLIC
                    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/${include_name}>
                    $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${exec_NAME}>
            )
        endforeach()

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
    endif()
endfunction()

########################  Interface lib target ############################ 
function(add_module_interface_lib)
    set(options)
    set(args NAME PACKAGE STANDARD)
    set(list_args INCLUDE LINK LINK_DIR DEFINES TOOLCHAIN_OPTION)
    cmake_parse_arguments(
        PARSE_ARGV 0
        lib_if
        "${options}"
        "${args}" 
        "${list_args}"
        ) 

    set(supported_toolchain FALSE)

    if(lib_if_TOOLCHAIN_OPTION)
        foreach(toolchain_opt IN LISTS lib_if_TOOLCHAIN_OPTION)
            if(${toolchain_opt} STREQUAL ${toolchain_name})
                set(supported_toolchain TRUE)
            else()
                message("Target ${lib_if_NAME} not support this compiler: ------------> ${toolchain_opt}")
            endif()
        endforeach()
    else()
        set(supported_toolchain TRUE)
    endif()

    if(${supported_toolchain})

        add_library(${lib_if_NAME} INTERFACE)

        target_link_libraries(${lib_if_NAME} INTERFACE ${lib_if_LINK})

        target_compile_definitions(${lib_if_NAME} INTERFACE ${lib_if_DEFINES})

        target_link_directories(${lib_if_NAME} INTERFACE ${lib_if_LINK_DIR})

        foreach(include_name IN LISTS lib_if_INCLUDE)
            target_include_directories(${lib_if_NAME} INTERFACE
                    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/${include_name}>
                    $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${lib_if_NAME}>
            )
        endforeach()
        
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

    endif()
endfunction()

########################  Test target  ############################ 
function(add_module_test)
    set(options)
    set(args NAME STANDARD)
    set(list_args SOURCE INCLUDE LINK DEFINES COMPILE_OPTION)
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

    foreach(include_name IN LISTS test_INCLUDE)
    target_include_directories(${test_NAME} PUBLIC
            $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/${include_name}>
            $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${test_NAME}>
    )
    endforeach()
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