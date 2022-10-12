
import logging
import argparse


logging.basicConfig(filename='example.log', encoding='utf-8', level=logging.DEBUG)
logging.debug('This message should go to the log file')
logging.info('So should this')
logging.warning('And this, too')
logging.error('And non-ASCII stuff, too, like Øresund and Malmö')

def valid_filetype(self, file_name):
    # validate file type
    return ( file_name.endswith('.hex') or file_name.endswith('.b00') )

def valid_path(self, path):
    # validate file path
    return os.path.exists(path)

def validate_file(self, file_name):
    ''' validate file name and path.'''
    if not self.valid_path(file_name):
        print(self.INVALID_PATH_MSG%(file_name))
        quit()
    elif not self.valid_filetype(file_name):
        print(self.INVALID_FILETYPE_MSG%(file_name))
        quit()
        return 

def processor(self, args):
    self.processor_type = args.processor[0]
    print("processor_type: {}".format(self.processor_type))

def language_select(self, args):
    self.run_mode = args.language_select[0]
    print("language_select: {}".format(self.run_mode))

def read_args(self):
    # print(sys.argv)
    # create parser object
    parser = argparse.ArgumentParser(description = "This is a CMake based Project generator script, that map the sources and generate the CMakeLists.txt files and link the targets together.")

    # defining arguments for parser object
    parser.add_argument("-p", "--processor", type = str, nargs = 1,
                        metavar = "", default = None,
                        help = "Processor type.")

    # parse the arguments from standard input
    args = parser.parse_args()
    
    # calling functions depending on type of argument
    if args.processor != None:
        self.processor(args)
    if args.console_mode != None:
        self.console_mode(args)

def run(self):
    self.read_args()
    
if __name__ == '__main__':
    run()