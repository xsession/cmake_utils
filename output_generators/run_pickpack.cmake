
function(copy2pickpack  target
                        target_type
                        project_name
                        mcu_core
                        pickpack_path 
                        )

  if(${target_type} STREQUAL "app")

    add_custom_command(
      TARGET ${target}
      POST_BUILD
      COMMENT "Copying ${target}.a00 to PickPack/projects/${project_name}/components/${mcu_core}"
      DEPENDS ${PROJECT_BINARY_DIR}/app/${project_name}/bin/${target}
      COMMAND ${CMAKE_COMMAND} -E copy
                              ${PROJECT_BINARY_DIR}/bin/${target}_${CURRENT_TIMESTAMP}.a00 
                              ${PICKPACK_PATH}/projects/${project_name}/components/${mcu_core}  )                  
  else()

    add_custom_command(
      TARGET ${target}
      POST_BUILD
      COMMENT "Copying ${target}.a00 to PickPack/projects/${project_name}/components/bl/${mcu_core}"
      DEPENDS ${PROJECT_BINARY_DIR}/app/${target}/bin/${target}
      COMMAND ${CMAKE_COMMAND} -E copy
                              ${PROJECT_BINARY_DIR}/bin/${target}_${CURRENT_TIMESTAMP}.a00 
                              ${PICKPACK_PATH}/projects/${project_name}/components/bl/${mcu_core}  )                  
                              
  endif()
  
  set_property(
        DIRECTORY
        APPEND
        PROPERTY ADDITIONAL_MAKE_CLEAN_FILES ${PROJECT_BINARY_DIR}/bin/${target}_${CURRENT_TIMESTAMP}.a00 ${PROJECT_BINARY_DIR}/bin/${target} )

endfunction()

