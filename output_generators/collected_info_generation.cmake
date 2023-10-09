
function(collected_info_gen target)
    set(output_file "${PROJECT_BINARY_DIR}/bin/${target}_collected_info.json")

    add_custom_command(
        TARGET ${target}
        POST_BUILD
        # WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}
        COMMAND ${CMAKE_COMMAND} 
            -D TARGET_NAME=${target}
            -D OUTPUT_FILE=${output_file}                    
            -P ${CMAKE_UTILS_PATH}/output_generators/info_collector.cmake
    )
    # set_property(
    #     DIRECTORY
    #     APPEND
    #     PROPERTY ADDITIONAL_MAKE_CLEAN_FILES ${output_file}
    # )
endfunction()

