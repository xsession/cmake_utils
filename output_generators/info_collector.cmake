
function(info_collector target output_file)

  message(STATUS "Collecting info for ${target}...")
  message(STATUS "Output file: ${output_file}")
  # start json file
  set(JSON_CONTENT "{\n")

  # executable own include dirs
  set(INCLUDE_DIRS_LIST "[")
  get_target_property(dirs ${target} INCLUDE_DIRECTORIES)
  foreach(dir ${dirs})
    list(APPEND INCLUDE_DIRS_LIST "\"${dir}\",")
  endforeach()
  # Remove trailing comma
  list(REMOVE_AT INCLUDE_DIRS_LIST -1)
  list(APPEND INCLUDE_DIRS_LIST "]")
  string(JOIN "\n" INCLUDE_DIRS_STRING ${INCLUDE_DIRS_LIST})
  string(APPEND JSON_CONTENT "\"include_directories\": ${INCLUDE_DIRS_STRING},\n")

  # linked libs
  get_target_property(MY_TARGET_LIBS ${target} LINK_LIBRARIES)
  set(LINKED_LIBS_LIST "[")
  foreach(lib ${MY_TARGET_LIBS})
    list(APPEND LINKED_LIBS_LIST "\"${lib}\",")
  endforeach()
  # Remove trailing comma
  list(REMOVE_AT LINKED_LIBS_LIST -1)
  list(APPEND LINKED_LIBS_LIST "]")
  string(JOIN "\n" LINKED_LIBS_STRING ${LINKED_LIBS_LIST})
  string(APPEND JSON_CONTENT "\"linked_libraries\": ${LINKED_LIBS_STRING},\n")

  # libs include directories
  set(LIB_INCLUDE_DIRS_LIST "{")
  foreach(lib ${MY_TARGET_LIBS})
    if(TARGET ${lib})
      get_target_property(LIB_INCLUDE_DIRS ${lib} INTERFACE_INCLUDE_DIRECTORIES)
      if(LIB_INCLUDE_DIRS)
        list(APPEND LIB_INCLUDE_DIRS_LIST "\"${lib}\": [")
        foreach(include_dir ${LIB_INCLUDE_DIRS})
          list(APPEND LIB_INCLUDE_DIRS_LIST "\"${include_dir}\",")
        endforeach()
        # Remove trailing comma
        list(REMOVE_AT LIB_INCLUDE_DIRS_LIST -1)
        list(APPEND LIB_INCLUDE_DIRS_LIST "],")
      endif()
    endif()
  endforeach()
  # Remove trailing comma
  list(REMOVE_AT LIB_INCLUDE_DIRS_LIST -1)
  list(APPEND LIB_INCLUDE_DIRS_LIST "}")
  string(JOIN "\n" LIB_INCLUDE_DIRS_STRING ${LIB_INCLUDE_DIRS_LIST})
  string(APPEND JSON_CONTENT "\"libraries_include_directories\": ${LIB_INCLUDE_DIRS_STRING}\n")

  # close json file
  string(APPEND JSON_CONTENT "}\n")
  file(WRITE ${output_file} "${JSON_CONTENT}")

endfunction()

info_collector(${TARGET_NAME} ${OUTPUT_FILE})

# function(kecske)
#   message(STATUS "Hello")
# endfunction()

# kecske()