
# # Function to convert a list to a JSON array
# function(list_to_json_array input_list output_json)
#     set(local_output "[")
#     set(list_length ${ARGC})
#     math(EXPR list_length "${list_length}-2") # Subtracting 2 to account for the input_list and output_json variables
#     foreach(index RANGE 0 ${list_length})
#         list(GET ${input_list} ${index} current_element)
#         set(local_output "${local_output}\"${current_element}\"")
#         if(NOT index EQUAL ${list_length})
#             set(local_output "${local_output},")
#         endif()
#     endforeach()
#     set(local_output "${local_output}]")
#     set(${output_json} "${local_output}" PARENT_SCOPE)
# endfunction()

# macro(info_collector target_name)

#   # Extract properties
#   get_target_property(RAW_MY_INCLUDES ${target_name} INCLUDE_DIRECTORIES)
#   string(REGEX REPLACE ".*$<BUILD_INTERFACE:([^>]*)>.*" "\\1" MY_INCLUDES ${RAW_MY_INCLUDES})
#   message(STATUS "MY_INCLUDES: ${MY_INCLUDES}")
#   get_target_property(MY_DEFINITIONS ${target_name} COMPILE_DEFINITIONS)
#   message(STATUS "MY_DEFINITIONS: ${MY_DEFINITIONS}")
#   get_target_property(MY_LINK_LIBRARIES ${target_name} LINK_LIBRARIES)
#   message(STATUS "MY_LINK_LIBRARIES: ${MY_LINK_LIBRARIES}")

#   # Remove duplicates from the include directories
#   list(REMOVE_DUPLICATES MY_INCLUDES)

#   # Convert properties to JSON format
#   list_to_json_array("${MY_INCLUDES}" JSON_INCLUDES)
#   list_to_json_array("${MY_DEFINITIONS}" JSON_DEFINITIONS)
#   list_to_json_array("${MY_LINK_LIBRARIES}" JSON_LINK_LIBRARIES)

#   set(JSON_OUTPUT "{\n")
#   set(JSON_OUTPUT "${JSON_OUTPUT}   \"INCLUDE_DIRECTORIES\": ${JSON_INCLUDES},\n")
#   set(JSON_OUTPUT "${JSON_OUTPUT}   \"COMPILE_DEFINITIONS\": ${JSON_DEFINITIONS},\n")
#   set(JSON_OUTPUT "${JSON_OUTPUT}   \"LINK_LIBRARIES\": ${JSON_LINK_LIBRARIES}\n")
#   set(JSON_OUTPUT "${JSON_OUTPUT}}\n")

#   # Write to a file
#   file(WRITE "${PROJECT_BINARY_DIR}/bin/${target_name}_properties.json" ${JSON_OUTPUT})
#   message(STATUS "Wrote ${JSON_OUTPUT} to ${PROJECT_BINARY_DIR}/bin/${target_name}_properties.json")

# endmacro()

function(recursion_test num_list)
    message(STATUS "num_list: ${num_list}")
    list(LENGTH num_list len)
    message(STATUS "len: ${len}")
    if(len GREATER 0)
        list(GET num_list 0 first)
        message(STATUS "first: ${first}")
        list(REMOVE_AT num_list 0)
        message(STATUS "num_list: ${num_list}")
        recursion_test("${num_list}")
    endif()
        
endfunction()


# macro(info_collector target_name)
#     file(RELATIVE_PATH relative_path
#                 ${PLATFORM_PROJECT_LOCATION}
#                 ${CMAKE_CURRENT_SOURCE_DIR}
#         )
#     include(${PROJECT_BINARY_DIR}/${relative_path}/CMakeFiles/${target_name}.dir/DependInfo.cmake)
#     message(STATUS "CMAKE_ASM_TARGET_INCLUDE_PATH: ${CMAKE_ASM_TARGET_INCLUDE_PATH}")
#     message(STATUS "CMAKE_ASM_FLAGS: ${CMAKE_TARGET_DEFINITIONS_ASM}")

#     # Start JSON file
#     set(json_content "")
#     string(APPEND json_content "{\n")

#     # ------------------------ PROJECT_NAME ---------------------------
#     string(APPEND json_content "\t\"project_name\": \"${target_name}\",\n")

#     # ------------------------ INCLUDE_DIRECTORIES ---------------------------
#     string(APPEND json_content "\t\"include_directories\": [\n")

#     get_target_property(RAW_MY_INCLUDES ${target_name} INCLUDE_DIRECTORIES)
#         string(REGEX REPLACE ".*$<BUILD_INTERFACE:([^>]*)>.*" "\\1" MY_INCLUDES ${RAW_MY_INCLUDES})
#         message(STATUS "MY_INCLUDES: ${MY_INCLUDES}")

#     get_target_property(linked_libs ${target_name} LINK_LIBRARIES)
#         message(STATUS "linked_libs: ${linked_libs}")

    

#     # Iterate over the list and append each element to the JSON string
#     foreach(item IN LISTS ${linked_libs})
        
#         string(APPEND json_content "\"${item}\",")
#     endforeach()

#     # Remove the trailing comma
#     string(LENGTH "${json_content}" len)
#     math(EXPR len "${len}-1")
#     string(SUBSTRING "${json_content}" 0 ${len} json_content)

#     # Close the JSON array
#     string(APPEND json_content "]")

#     string(APPEND json_content ",\n")

#     # ------------------------ COMPILE_OPTIONS ---------------------------
#     string(APPEND json_content "\t\"compile_options\": [\n")

#     string(APPEND json_content "\"${CMAKE_C_FLAGS}\",")
#     string(APPEND json_content "\"${CMAKE_C_FLAGS_DEBUG}\",")
#     string(APPEND json_content "\"${COMPILE_OPTIONS}\",")

#     # Remove the trailing comma
#     string(LENGTH "${json_content}" len)
#     math(EXPR len "${len}-1")
#     string(SUBSTRING "${json_content}" 0 ${len} json_content)

#     # Close the JSON array
#     string(APPEND json_content "]")
#     string(APPEND json_content ",\n")

#     # ------------------------ COMPILE_DEFINES ---------------------------
#     string(APPEND json_content "\t\"compile_defines\": {\n")

#     # Iterate over the list, split each item, and format as JSON
#     foreach(item IN LISTS CMAKE_TARGET_DEFINITIONS_ASM)
#             # Split item into key and value
#             string(REGEX MATCH "^([^=]+)=(.+)$" _ ${item})
#             set(key "${CMAKE_MATCH_1}")
#             set(value "${CMAKE_MATCH_2}")

#             # Determine if value is a string or a number
#             if(value MATCHES "^-?[0-9]+$")
#                     # It's a number
#                     string(APPEND json_content "    \"${key}\": ${value},\n")
#             else()
#                     # It's a string
#                     if(value MATCHES "^\".*\"$")
#                             # The value already has quotes
#                             string(APPEND json_content "    \"${key}\": ${value},\n")
#                     else()
#                             # The value doesn't have quotes, so add them
#                             string(APPEND json_content "    \"${key}\": \"${value}\",\n")
#                     endif()
#             endif()
#     endforeach()

#     # Remove the trailing comma
#     string(LENGTH "${json_content}" len)
#     math(EXPR len "${len}-2")
#     string(SUBSTRING "${json_content}" 0 ${len} json_content)

#     # Close the JSON array
#     string(APPEND json_content "}")

#     string(APPEND json_content "\n}")

#     if(EXISTS "${PROJECT_BINARY_DIR}/${json_filename}")
#             file(REMOVE "${PROJECT_BINARY_DIR}/${json_filename}")
#             file(WRITE "${PROJECT_BINARY_DIR}/${json_filename}" "${json_content}")
#     endif()

#     # Write to file
#     file(STRINGS "${PROJECT_BINARY_DIR}/${json_filename}" "${json_content}")
# endmacro()

# Usage:
# write_list_to_json(CMAKE_ASM_TARGET_INCLUDE_PATH "output.json")