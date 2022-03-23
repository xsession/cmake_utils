include(color_print)

function(pickpack   target 
                    python_path 
                    pickpack_path 
                    xml_name)

  add_custom_command(
    TARGET ${target}
    POST_BUILD
    COMMENT "Generating ${target}.b00"
    DEPENDS ${PROJECT_BINARY_DIR}/app/${target}/bin/${target}
    COMMAND "${python_path}/python.exe" "${pickpack_path}/bootAsm.py" "${pickpack_path}/jobs/${xml_name}.xml" )

    set_property(
        DIRECTORY
        APPEND
        PROPERTY ADDITIONAL_MAKE_CLEAN_FILES ${PROJECT_BINARY_DIR}/app/${target}/bin/${target})
endfunction()
