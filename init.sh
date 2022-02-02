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
sudo mysql -u root -e "CREATE DATABASE 'stepic_course_mail_ru';"
sudo mysql -u root -e "CREATE USER 'box'@'localhost' IDENTIFIED BY 'xob01)!';"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON 'stepic_course_mail_ru'.* TO 'box'@'localhost' WITH GRANT OPTION;"
sudo mysql -u root -e "FLUSH PRIVILEGES;"

# django db
cd ask/
sudo python3 manage.py makemigrations
sudo python3 manage.py migrate
