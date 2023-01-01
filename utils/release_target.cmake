include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

function(export_lib target target_project_name)

	## Target's cmake files: targets export
	install(EXPORT  ${target}
		NAMESPACE   ${target_project_name}::
		DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${target_project_name}
	)

endfunction()

function(install_lib target_project_name)

	write_basic_package_version_file(
		${CMAKE_CURRENT_BINARY_DIR}/chsm-config-version.cmake
		COMPATIBILITY AnyNewerVersion
	)
	
	get_property(EXPORTED_TARGETS GLOBAL PROPERTY chsm_EXPORTED_TARGETS)

	foreach(TARGET ${EXPORTED_TARGETS})
	get_target_property(INCLUDE_DIR ${TARGET} INTERFACE_INCLUDE_DIRECTORIES)
	message("${TARGET} include directories: ${INCLUDE_DIR}")
	endforeach()

		
	install(TARGETS ${EXPORTED_TARGETS}
				NAMESPACE chsm::
				DESTINATION lib)

	install(FILES
	${CMAKE_CURRENT_BINARY_DIR}/chsm-config-version.cmake
	DESTINATION ${CMAKE_INSTALL_DATADIR}/chsm
	)

	configure_file(
	${CMAKE_CURRENT_SOURCE_DIR}/cmake/chsm.pc.in
	${CMAKE_CURRENT_BINARY_DIR}/chsm.pc
	)

	install(
	FILES ${CMAKE_CURRENT_BINARY_DIR}/chsm.pc
	DESTINATION ${CMAKE_INSTALL_LIBDIR}/pkgconfig
	)

endfunction()
