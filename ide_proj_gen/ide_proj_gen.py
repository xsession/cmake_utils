"""
ide_proj_gen

Usage:
    ide_proj_gen.py [options] [FILE]

Options:
"""

import logging
import json
import jinja2
import pkg_resources
from datetime import datetime
import collections
import pprint
from pathlib import Path
import docopt

class PythonCodeGenException(Exception):
    def __init__(self, *args: object) -> None:
        super().__init__(*args)
        logging.error(args[0])

class Mplab_project:
    def __init__(self, includes, sources, linked_libs, defines, proj_location) -> None:
        pass
    
    def project(self):
        pass
    
def make_python(data, od_name):
    template = str(pkg_resources.resource_string(__name__, 'py_template.jinja'), encoding='utf-8')
    tmpl = jinja2.Template(template, trim_blocks=True, lstrip_blocks=True)
    py_str = tmpl.render(data = data, module_name = od_name)
    return py_str

def get_python(data, od_name):
    data = YamlPyCodeGen(data, od_name).collect_data()
    py_str = make_python(data, od_name)
    return py_str

if __name__ == '__main__':
    logging.basicConfig(level=logging.INFO, format='%(asctime)s %(filename)-20s:%(lineno)-4s %(message)s')
    args = docopt(__doc__)
    print(args)

    if args['FILE']:
        p = Path(args['FILE'])
        if p.exists():
            project = Project(p)
            if args['--code-gen']:
                project.generate_code()
                quit()