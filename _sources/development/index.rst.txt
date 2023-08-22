.. sectnum::
   :start: 2

Development
+++++++++++++

Overview
=========

Hierarchical
-------------

.. code-block:: text

   ├───.github
   │   └───workflows
   │           docs_pages.yml
   │
   ├───cmake_project_generator
   │   │   cmake_project_generator.py
   │   │   dependency_scanner.py
   │   │
   │   └───template
   │           cmake_exec.jinja
   │           cmake_lib.jinja
   │           project.jinja
   │
   ├───compilers
   │       toolchain-mingw.cmake
   │       toolchain-stm32l4.cmake
   │       toolchain-ti-armcl.cmake
   │       toolchain-ti-cl2000-c28.cmake
   │       toolchain-ti-cl2000-f2806x.cmake
   │       toolchain-xc16.cmake
   ├───docs
   ├───IDE_project_generators
   │   ├───CCS_project
   │   │   │   ccs_generator.py
   │   │   │
   │   │   ├───ccs_template
   │   │   │       .ccsproject
   │   │   │       .cproject
   │   │   │       .project
   │   │   │
   │   │   └───jinja_template
   │   │           ccsproject.jinja
   │   │           cproject.jinja
   │   │           project.jinja
   │   │
   │   ├───Eclipse_project
   │   │   │   eclipse_generator.py
   │   │   │
   │   │   ├───eclipse_template
   │   │   │       .cproject
   │   │   │       .project
   │   │   │       
   │   │   └───jinja_template
   │   │           cproject.jinja
   │   │           project.jinja
   │   │
   │   └───MPLAB_project
   │       │   mplab_generator.py
   │       │
   │       ├───generator_template.X
   │       │   └───nbproject
   │       │           configurations.xml
   │       │           project.xml
   │       │
   │       └───jinja_template
   │               configurations.jinja
   │               project.jinja
   │
   ├───output_generators
   │       run_pickpack.cmake
   │       ti-f2806x-output_generation.cmake
   │       xc16-output_generation.cmake
   │
   └───utils
         add_projects.cmake
         add_targets.cmake
         code_refactor.cmake
         color_print.cmake
         diagnostic.cmake
         graphviz.cmake
         path_list.cmake


