

mysql # disable, using default sqlite3
sudo /etc/init.d/mysql start
sudo mysql -u root -e "CREATE DATABASE stepik_course_mail_ru;"
sudo mysql -u root -e "CREATE USER box@'%' IDENTIFIED BY 'box';"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON stepic_course_mail_ru.* TO box@'%' WITH GRANT OPTION;"
sudo mysql -u root -e "FLUSH PRIVILEGES;

cd ask/
sudo python3 manage.py makemigrations
sudo python3 manage.py migrate

