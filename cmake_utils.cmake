cmake_minimum_required(VERSION 3.25)

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
include(release_target)
include(add_targets)
# include(graphviz)
include(path_list)