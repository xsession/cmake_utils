cmake_minimum_required(VERSION 3.25)

########################  Set where to search .cmake files  ############################ 
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake_utils/utils")
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake_utils/modules")
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake_utils/output_generators")
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake_utils/IDE_project_generators")
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake_utils")

########################  External .cmake files includes  ############################ 
include(GNUInstallDirs)
include(CMakePackageConfigHelpers)
include(diagnostic)
include(release_target)
include(add_targets)
include(graphviz)
include(path_list)