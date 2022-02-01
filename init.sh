#!/bin/bash


# nginx
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

# gunicorn
sudo gunicorn -b "0.0.0.0:8080" hello:print_query &
cd ask/
sudo gunicorn -b "0.0.0.0:8000" ask.wsgi:application &
