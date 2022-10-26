'''CMake Project Generator

Usage:
    cmake_project_generator.py [options] 

Options:
    -h --help                               Show the help page.
    --version                               Show the actual CMake Project Generator version.
    -p FOLDER --package-folders=FOLDER      Set the CMake package top folder for change the package names in generated CMakeLists.txt files.
    -r FOLDER --root-dir=<FOLDER>           Set the root directory witch will be the home of the Top level CMakeLists.txt, and from here start to parse the file tree.
    --project-name=<PROJ_NAME>              Set 
    --set-sub-project-folder=<FOLDER>
    --set-project-version=<VERSION>
    --set-toolchain-file=<TOOLCHAIN>
    --set-compiler-path=<COMPILER_PATH>
    --set-os=<OS>
    --tests-on
    --debug-on
    --generate-toolchain-file
    --generate-run-file
'''

import logging
import re
import os
from pathlib import Path
from docopt import docopt

if __name__ == '__main__':
    arguments = docopt(__doc__, version="CMake Project Generator v0.0.1")
    # print(arguments)

    if arguments['--package-folders']:
        print(str(arguments['--package-folders']))

