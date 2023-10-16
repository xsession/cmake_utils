import subprocess

class MDBInterface:

    def __init__(self):
        self.mdb_path = "path_to_mdb"  # Set this to the location of the MDB executable

    def run_mdb_command(self, command):
        """Executes an MDB command and returns its output."""
        full_command = f"{self.mdb_path} {command}"
        result = subprocess.run(full_command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        if result.stderr:
            raise Exception(f"MDB Error: {result.stderr}")
        return result.stdout.strip()

    def enter_debug_mode(self):
        """Enters debug mode in MDB."""
        return self.run_mdb_command("enter_debug_command")  # Replace 'enter_debug_command' with actual MDB command

    def exit_debug_mode(self):
        """Exits debug mode in MDB."""
        return self.run_mdb_command("exit_debug_command")  # Replace 'exit_debug_command' with actual MDB command

    def read_register(self, register_name):
        """Reads the value of a specified register."""
        output = self.run_mdb_command(f"read_register_command {register_name}")  # Replace with the actual command syntax
        # Parse the output to extract the register value.
        # Assuming output format is "REGISTER_NAME: VALUE"
        _, value = output.split(":")
        return value.strip()

    def write_register(self, register_name, value):
        """Writes a value to a specified register."""
        self.run_mdb_command(f"write_register_command {register_name} {value}")  # Replace with the actual command syntax

    def read_memory(self, address, length):
        """Reads a block of memory."""
        output = self.run_mdb_command(f"read_memory_command {address} {length}")  # Replace with the actual command syntax
        # Parse the output to extract memory values.
        # This will depend heavily on the MDB output format.
        return output

    def write_memory(self, address, data):
        """Writes data to memory."""
        self.run_mdb_command(f"write_memory_command {address} {data}")  # Replace with the actual command syntax

    # You can expand this class with other functionalities like:
    # reset, set breakpoints, clear breakpoints, etc.


if __name__ == "__main__":
    # Example usage
    mdb_interface = MDBInterface()
    mdb_interface.enter_debug_mode()
    print(mdb_interface.read_register("R0"))
    mdb_interface.write_register("R0", "0x1234")
    print(mdb_interface.read_memory("0x1000", "0x10"))
    mdb_interface.write_memory("0x1000", "0x12345678")
    mdb_interface.exit_debug_mode()