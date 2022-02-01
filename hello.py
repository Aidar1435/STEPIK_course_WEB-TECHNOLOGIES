'''
simple wsgi app
study project
'''

def print_query(environ, start_response):
    '''print query string. each parameter on a new line'''
    start_responce('200 OK', [('Content-type', 'text/plain')])
    yield '\n'.join(environ['QUERY_STRING'].split('&')).decode('utf-8')
