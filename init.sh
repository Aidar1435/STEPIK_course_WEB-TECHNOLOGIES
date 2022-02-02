#!/bin/bash


# nginx
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

# gunicorn
sudo gunicorn -b "0.0.0.0:8080" hello:print_query &
cd ask/
sudo gunicorn -b "0.0.0.0:8000" ask.wsgi:application &
cd ..

# mysql
sudo mysql -uroot -e "CREATE DATABASE 'stepic_course_mail_ru';"
sudo mysql -uroot -e "CREATE USER 'box'@'localhost' IDENTIFIED BY 'xob01)!';"
sudo mysql -uroot -e "GRANT ALL PRIVILEGES ON 'stepic_course_mail_ru'.* TO 'box'@'localhost';"

# django db
cd ask/
sudo python3 manage.py makemigrations
sudo python3 manage.py migrate
