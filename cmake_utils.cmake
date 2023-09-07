cmake_minimum_required(VERSION 3.22)

if(NOT DEFINED CMAKE_UTILS_INCLUDED)

    ########################  Set where to search .cmake files  ############################ 
    list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/utils")
    list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/modules")
    list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/output_generators")
    list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/IDE_project_generators")
    message("CMAKE_MODULE_PATH: -> ${CMAKE_MODULE_PATH}")

    ########################  External .cmake files includes  ############################ 
    include(GNUInstallDirs)
    include(CMakePackageConfigHelpers)
    include(diagnostic)
    include(add_targets)
    include(graphviz)
    include(path_list)

    include(ti-c28-output_generation)
    include(ti-m3-output_generation)
    include(ti-f2806x-output_generation)
    include(xc16-output_generation)
    include(run_pickpack)

    set(CMAKE_UTILS_INCLUDED TRUE)

endif()
