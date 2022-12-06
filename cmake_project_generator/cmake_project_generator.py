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
    --print-file-tree=<PATH>                Set path 
'''

from ast import match_case
import logging
import re
import os
from pathlib import Path
from docopt import docopt
import collections
import json

class CMakeProjectGenerator:
    def __init__(self) -> None:
        self.targets = {}
        self.targets['link_libs'] = {}
        self.targets['external_include'] = {}
        self.targets['internal_include'] = {}
        self.targets['sources'] = {}
        self.targets['target_type'] = {}
        self.targets['root_dir'] = {}
        print(self.targets)
        print(Path(__file__).parent.resolve())
        pass

    def get_inner_includes(self, path) -> dict:
        for dirpath, dirnames,filenames in os.walk(path):
            pass

    def get_external_includes(self) -> dict:
        pass

    def get_folder_tree(self, path) -> dict:
        for dirpath, dirnames,filenames in os.walk(path):
            pass


if __name__ == '__main__':
    arguments = docopt(__doc__, version="CMake Project Generator v0.0.1")
    # print(arguments)
    cpg = CMakeProjectGenerator()
    # file_tree_dict = cpg.get_file_tree(Path(__file__).parent.resolve())

    # if arguments['--print-file-tree']:
    #     print(str(arguments['--print-file-tree']))
    #     node_dict = []
    #     files_dict = []
    #     folder_struct = ['inc','src','doc']
    #     valid_folder_struct = ('inc')
    #     for x in folder_struct:
    #         if valid_folder_struct in folder_struct:
    #             print("This is a valid library folder!")
    #         else:
    #             print("kecske")
    #     for dirpath, dirnames,filenames in os.walk(arguments['--print-file-tree']):


