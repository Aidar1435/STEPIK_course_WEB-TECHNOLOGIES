#!/bin/bash
clear
echo -e \\t\\tTest Django
curl 127.0.0.1:8000/
curl 127.0.0.1:8000/
curl 127.0.0.1:8000/login/
curl 127.0.0.1:8000/login/123
curl 127.0.0.1:8000/signup/
curl 127.0.0.1:8000/signup/123
curl 127.0.0.1:8000/question/123/
curl 127.0.0.1:8000/question/456
curl 127.0.0.1:8000/question/789/123
curl 127.0.0.1:8000/ask/
curl 127.0.0.1:8000/ask//
curl 127.0.0.1:8000/popular/
curl 127.0.0.1:8000/popular/qqq
curl 127.0.0.1:8000/new/
curl 127.0.0.1:8000/new/111
curl 127.0.0.1:8000/abrakadabra/
echo -e \\t\\tTest NGINX
curl localhost/
curl localhost/login/
curl localhost/login/123
curl localhost/signup/
curl localhost/signup/123
curl localhost/question/123/
curl localhost/question/456
curl localhost/question/789/123
curl localhost/ask/
curl localhost/ask//
curl localhost/popular/
curl localhost/popular/qqq
curl localhost/new/
curl localhost/new/111
curl localhost/abrakadabra/
