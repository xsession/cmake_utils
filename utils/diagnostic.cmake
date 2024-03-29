include(color_print)
include(code_refactor)

macro(diagnostic)
  get_filename_component(libname ${CMAKE_CURRENT_SOURCE_DIR} NAME)

  if(NOT TARGET ${libname})
    set(libname ${ARGN})
  else()
    if(code_format)
      clang_format(${libname})
    endif()
  endif()

  if(CMAKE_DEBUG_MSG)
    color_print(cyan "--> ${libname}: ")
    get_target_property(list ${libname} INCLUDE_DIRECTORIES)
    message(STATUS "${libname} target INCLUDE_DIRECTORIES list: -> ${list}")
    scan_header_dirs(${libname} scaned_files)
    message(STATUS "${libname} target INCLUDE_FILES list: -> ${scaned_files}")
    get_target_property(list ${libname} SOURCE_DIR)
    message(STATUS "${libname} target SOURCE_DIR list: -> ${list}")
    get_target_property(list ${libname} SOURCES)
    message(STATUS "${libname} target SOURCES list: -> ${list}")
    get_target_property(list ${libname} INTERFACE_SOURCES)
    message(STATUS "${libname} target INTERFACE_SOURCES list: -> ${list}")
    get_target_property(list ${libname} COMPILE_DEFINITIONS)
    message(STATUS "${libname} target COMPILE_DEFINITIONS list: -> ${list}")
    get_target_property(list ${libname} LINK_LIBRARIES)
    message(STATUS "${libname} target LINK_LIBRARIES list: -> ${list}")
    get_target_property(list ${libname} COMPILE_OPTIONS)
    message(STATUS "${libname} target COMPILE_OPTIONS list: -> ${list}")
    get_target_property(list ${libname} C_STANDARD)
    message(STATUS "${libname} target C_STANDARD list: -> ${list}")


    # Assume TARGET_NAME is the name of your target
    get_target_property(TARGET_TYPE ${libname} TYPE)

    if(TARGET_TYPE STREQUAL "EXECUTABLE")
      message(STATUS "TARGET_NAME is an executable.")
    else()
      message(STATUS "TARGET_NAME is a library.")
    endif()
    # get_target_property(list ${libname} INTERFACE_INCLUDE_DIRECTORIES)
    # foreach(dir ${list})
    #   if(dir MATCHES "^\\$<BUILD_INTERFACE:.*>$")
    #     string(REPLACE "$<BUILD_INTERFACE:" "" dir ${dir})
    #     string(REPLACE ">" "" dir ${dir})
    #     get_filename_component(abs_dir ${dir} ABSOLUTE)
    #     message(STATUS "Raw ${libname} target INTERFACE_INCLUDE_DIRECTORIES list: -> ${abs_dir}")
    #   endif()
    # endforeach()

    # if(TARGET ${libname} AND TARGET_PROPERTY ${libname} TYPE STREQUAL "EXECUTABLE")
    #   get_target_property(list ${libname} INTERFACE_LINK_LIBRARIES)
    #   foreach(lib ${list})
    #     message(STATUS "Raw ${libname} target INTERFACE_LINK_LIBRARIES list: -> ${lib}")
    #     if(TARGET lib)
    #       message(STATUS "${lib} target: ")
    #       get_target_property(lib_include ${lib} INTERFACE_INCLUDE_DIRECTORIES)
    #       foreach(dir ${lib_include})
    #         if(dir MATCHES "^\\$<BUILD_INTERFACE:.*>$")
    #           string(REPLACE "$<BUILD_INTERFACE:" "" dir ${dir})
    #           string(REPLACE ">" "" dir ${dir})
    #           get_filename_component(abs_dir ${dir} ABSOLUTE)
    #           message(STATUS "Raw ${lib} target INTERFACE_INCLUDE_DIRECTORIES list: -> ${abs_dir}")
    #         endif()
    #       endforeach()
    #     endif()
    #   endforeach()
    # endif()

  else()
    color_print(cyan "--> ${libname}: ")
  endif()
endmacro()
