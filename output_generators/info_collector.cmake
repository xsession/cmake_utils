macro(info_collector target_name)

  # Extract properties
  get_target_property(RAW_MY_INCLUDES ${target_name} INCLUDE_DIRECTORIES)
  string(REGEX REPLACE ".*$<BUILD_INTERFACE:([^>]*)>.*" "\\1" MY_INCLUDES ${RAW_MY_INCLUDES})
  message(STATUS "MY_INCLUDES: ${MY_INCLUDES}")
  get_target_property(MY_DEFINITIONS ${target_name} COMPILE_DEFINITIONS)
  message(STATUS "MY_DEFINITIONS: ${MY_DEFINITIONS}")
  get_target_property(MY_LINK_LIBRARIES ${target_name} LINK_LIBRARIES)
  message(STATUS "MY_LINK_LIBRARIES: ${MY_LINK_LIBRARIES}")

  # Remove duplicates from the include directories
  list(REMOVE_DUPLICATES MY_INCLUDES)

  # Function to convert a list to a JSON array
  function(list_to_json_array input_list output_json)
      set(local_output "[")
      set(list_length ${ARGC})
      math(EXPR list_length "${list_length}-2") # Subtracting 2 to account for the input_list and output_json variables
      foreach(index RANGE 0 ${list_length})
          list(GET ${input_list} ${index} current_element)
          set(local_output "${local_output}\"${current_element}\"")
          if(NOT index EQUAL ${list_length})
              set(local_output "${local_output},")
          endif()
      endforeach()
      set(local_output "${local_output}]")
      set(${output_json} "${local_output}" PARENT_SCOPE)
  endfunction()

  # Convert properties to JSON format
  list_to_json_array("${MY_INCLUDES}" JSON_INCLUDES)
  list_to_json_array("${MY_DEFINITIONS}" JSON_DEFINITIONS)
  list_to_json_array("${MY_LINK_LIBRARIES}" JSON_LINK_LIBRARIES)

  set(JSON_OUTPUT "{\n")
  set(JSON_OUTPUT "${JSON_OUTPUT}   \"INCLUDE_DIRECTORIES\": ${JSON_INCLUDES},\n")
  set(JSON_OUTPUT "${JSON_OUTPUT}   \"COMPILE_DEFINITIONS\": ${JSON_DEFINITIONS},\n")
  set(JSON_OUTPUT "${JSON_OUTPUT}   \"LINK_LIBRARIES\": ${JSON_LINK_LIBRARIES}\n")
  set(JSON_OUTPUT "${JSON_OUTPUT}}\n")

  # Write to a file
  file(WRITE "${PROJECT_BINARY_DIR}/bin/${target_name}_properties.json" ${JSON_OUTPUT})
  message(STATUS "Wrote ${JSON_OUTPUT} to ${PROJECT_BINARY_DIR}/bin/${target_name}_properties.json")

endmacro()
