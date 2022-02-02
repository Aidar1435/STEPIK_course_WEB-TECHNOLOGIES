#!/bin/bash


# nginx
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

# mysql
sudo /etc/init.d/mysql start
read -p "any key..."
sudo mysql -u root -e "CREATE DATABASE stepik_course_mail_ru;"
read -p "any key..."
sudo mysql -u root -e "CREATE USER box@'%' IDENTIFIED BY 'box';"
read -p "any key..."
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON stepic_course_mail_ru.* TO box@'%' WITH GRANT OPTION;"
read -p "any key..."
sudo mysql -u root -e "FLUSH PRIVILEGES;"
read -p "any key..."

# gunicorn
sudo gunicorn -b "0.0.0.0:8080" hello:print_query &
cd ask/
sudo gunicorn -b "0.0.0.0:8000" ask.wsgi:application &
cd ..

# django db
cd ask/
sudo python3 manage.py makemigrations
sudo python3 manage.py migrate
