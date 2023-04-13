
from http.server import HTTPServer, SimpleHTTPRequestHandler

import ssl

httpd = HTTPServer(('localhost', 443),
                           SimpleHTTPRequestHandler)

httpd.socket = ssl.wrap_socket(httpd.socket,
                 certfile='/home/roland/.config/python3/rootCA.pem',keyfile='/home/roland/.config/python3/rootCA.key', server_side=True)

try:
    httpd.serve_forever()
except KeyboardInterrupt:
    print('\nBye!')
else:
    print ('HTTPS running')
