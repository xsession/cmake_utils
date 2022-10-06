
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

def nodeid(self, args):
    self.can_node_id = args.nodeid[0]
    print("nodeid: {}".format(self.can_node_id))

def baudrate(self, args):
    # self.baudrate_val = args.baudrate[0]
    print("baudrate: {}".format(self.baudrate_val))

def firmware(self, args):
    self.firmware_path = args.firmware[0]
    self.validate_file(self.firmware_path)
    print("firmware_path: {}".format(self.firmware_path))

def processor(self, args):
    self.processor_type = args.processor[0]
    print("processor_type: {}".format(self.processor_type))

def flash_bootloader(self, args):
    self.flash_bootloader_check = args.flash_bootloader[0]
    print("flash_bootloader_check: {}".format(self.flash_bootloader_check))

def console_mode(self, args):
    self.run_mode = args.console_mode[0]
    print("console_mode: {}".format(self.run_mode))

def read_args(self):
    # print(sys.argv)
    # create parser object
    parser = argparse.ArgumentParser(description = "This is a Firmware uploader, that supports uploading firmware over CANOpen standard, block protokoll for the PIC controllers and over Programmers.")

    # defining arguments for parser object
    parser.add_argument("-n", "--nodeid", type = int, nargs = 1,
                        metavar = "", default = None,
                        help = "The CANOpen device node id in hex.")
    parser.add_argument("-b", "--baudrate", type = str, nargs = 1,
                        metavar = "", default = 250,
                        help = "CAN bus baudrate.")
    parser.add_argument("-f", "--firmware", type = str, nargs = 1,
                        metavar = "", default = None,
                        help = "The CANOpen device updatable firmware file over bootloader.")
    parser.add_argument("-p", "--processor", type = bool, nargs = 1,
                        metavar = "", default = None,
                        help = "Processor type in the CANOpen device.")
    parser.add_argument("-fb", "--flash_bootloader", type = bool, nargs = 1,
                        metavar = "", default = None,
                        help = "Flash the bootloader over Programmer.")
    parser.add_argument("-c", "--console_mode", type = bool, nargs = 1,
                        metavar = "", default = None,
                        help = "Starts the program without GUI if its value is 1. Starts automatic the firmware upload to the selected device.")

    # parse the arguments from standard input
    args = parser.parse_args()
    
    # calling functions depending on type of argument
    if args.nodeid != None:
        self.nodeid(args)
    if args.baudrate != None:
        self.baudrate(args)
    if args.firmware != None:
        self.firmware(args)
    if args.processor != None:
        self.processor(args)
    if args.flash_bootloader != None:
        self.flash_bootloader(args)
    if args.console_mode != None:
        self.console_mode(args)

def run(self):
    self.read_args()