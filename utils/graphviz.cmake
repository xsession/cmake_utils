
add_custom_target(graphviz ALL
    COMMAND ${CMAKE_COMMAND} -E make_directory graphviz
    COMMAND ${CMAKE_COMMAND} "--graphviz=graphviz/project_dependency.dot" .
    COMMAND dot -Tpng graphviz/project_dependency.dot -o graphviz/project_dependency.png
    WORKING_DIRECTORY "${CMAKE_BINARY_DIR}"
    COMMENT "Graphviz generated dependency map in ${CMAKE_BINARY_DIR}/graphviz/project_dependency.png"
    )
    
function(graphviz target)
    add_custom_command(
        TARGET ${target}
        PRE_BUILD
        COMMAND ${CMAKE_COMMAND} -E make_directory graphviz
        COMMAND ${CMAKE_COMMAND} "--graphviz=graphviz/project_dependency.dot" .
        COMMAND dot -Tpng graphviz/project_dependency.dot -o ${target}_project_dependency.png
        WORKING_DIRECTORY "${CMAKE_BINARY_DIR}"
        COMMENT "Graphviz generated dependency map in ${CMAKE_BINARY_DIR}/graphviz/project_dependency.png"
    )
endfunction(graphviz)
