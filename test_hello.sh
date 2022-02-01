#!/bin/bash
clear
echo -e \\t\\tTest gunicorn app
curl -vv "127.0.0.1:8080"
curl -vv "127.0.0.1:8080/?"
curl -vv "127.0.0.1:8080/?a="
curl -vv "127.0.0.1:8080/?a=1&b=2&c=3"
curl -vv "127.0.0.1:8080/?a=1&b=2&c=&d=4&e=test1&a=test2&c=test3&d="
echo -e \\t\\tTest nginx settings:
curl -vv "127.0.0.1/hello/"
curl -vv "127.0.0.1/hello/?"
curl -vv "127.0.0.1/hello/?a="
curl -vv "127.0.0.1/hello/?a=1&b=2&c=3"
curl -vv "127.0.0.1/hello/?a=1&b=2&c=&d=4&e=test1&a=test2&c=test3&d="
