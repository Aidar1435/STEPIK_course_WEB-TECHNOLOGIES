'''
simple wsgi app
study project
'''

def print_query(environ, start_response):
    '''print query string. each parameter on a new line'''
    start_response('200 OK', [('Content-type', 'text/plain')])
    yield environ['QUERY_STRING'].replace('&', '\n').encode('utf-8')
