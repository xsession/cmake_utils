
include(color_print)

function(bin2hex target)
  find_program(
    BIN2HEX
    NAMES ${TI_OBJDUMP}
    HINTS ${TOOLCHAIN_DIR})

  if(NOT BIN2HEX)
    color_print(red "No ${TI_OBJDUMP} program was found")
    message(SEND_ERROR "")
  endif()

  add_custom_command(
    TARGET ${target}
    POST_BUILD
    COMMENT "Generating ${target} executable!"
    DEPENDS ${PROJECT_BINARY_DIR}/bin/${target}
    WORKING_DIRECTORY ${PROJECT_BINARY_DIR}/bin
    COMMAND "${BIN2HEX}" --diag_wrap=off --boot --gpio8 --ascii -o "${target}.a00" "${target}")

    set_property(
        DIRECTORY
        APPEND
      PROPERTY ADDITIONAL_MAKE_CLEAN_FILES ${PROJECT_BINARY_DIR}/bin/${target}.out ${PROJECT_BINARY_DIR}/bin/${target}.a00)
endfunction()
