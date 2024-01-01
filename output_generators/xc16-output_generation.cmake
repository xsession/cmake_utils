
include(color_print)

function(bin2hex_xc16 target relative_path)
  find_program(
    BIN2HEX
    NAMES ${toolchain_prefix}-bin2hex bin2hex
    HINTS ${BINUTILS_PATH})

  if(NOT BIN2HEX)
    color_print(red "No xc16-bin2hex program was found")
    message(SEND_ERROR "")
  endif()

  add_custom_command(
    TARGET ${target}
    POST_BUILD
    COMMENT "Generating ${target}.hex"
    DEPENDS ${PROJECT_BINARY_DIR}/${relative_path}/${target}
    WORKING_DIRECTORY ${PROJECT_BINARY_DIR}/${relative_path}
    COMMAND "${BIN2HEX}" "${target}.elf" -a  -omf=elf )

    set_property(
        DIRECTORY
        APPEND
        PROPERTY ADDITIONAL_MAKE_CLEAN_FILES ${PROJECT_BINARY_DIR}/${relative_path}/${target})
endfunction()
