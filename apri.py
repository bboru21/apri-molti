#!/usr/bin/env python3

from wsgiref.simple_server import make_server
from pyramid.config import Configurator
from pyramid.response import Response

import webbrowser

IP = '0.0.0.0'
PORT = 6543

def form(request):
    return {}

if __name__ == '__main__':
    with Configurator() as config:
        config.add_route('form', '/')
        config.include('pyramid_mako')
        config.add_view(form, route_name='form', renderer='form.mako')
        app = config.make_wsgi_app()
    server = make_server(IP, PORT, app)
    print('Serving at 0.0.0.0:6543')
    server.serve_forever()

    webbrowser.open_new_tab('%s:%s' % (IP, PORT))




print('finis')