import os
from http.server import SimpleHTTPRequestHandler, HTTPServer

port = int(os.getenv("PORT", "8000"))

web_dir = os.path.join(os.path.dirname(__file__), 'web')
os.chdir(web_dir)

server_address = ("0.0.0.0", port)
httpd = HTTPServer(server_address, SimpleHTTPRequestHandler)
httpd.serve_forever()