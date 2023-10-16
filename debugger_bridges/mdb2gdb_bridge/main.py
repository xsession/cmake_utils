import socket
from gdb_protocol import handle_gdb_command

HOST, PORT = "localhost", 12345

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.bind((HOST, PORT))
    s.listen()
    conn, addr = s.accept()
    with conn:
        print('Connected by', addr)
        while True:
            data = conn.recv(1024)
            if not data:
                break
            response = handle_gdb_command(data.decode())
            conn.sendall(response.encode())
