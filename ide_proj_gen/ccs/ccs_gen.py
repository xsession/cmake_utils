"""
mplab_proj_generator

Usage:
    mplab_generator.py [options] [FILE]

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

class Mplab_project:
    def __init__(self) -> None:
        pass
    
    def project(self):
        pass

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