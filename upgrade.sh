#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y python3.5
sudo unlink /usr/bin/python3
sudo ln -s /usr/bin/python3.5 /usr/bin/python3
curl "https://bootstrap.pypa.io/pip/3.5/get-pip.py" > get-pip.py
sudo python3 get-pip.py
rm get-pip.py
sudo apt-get install -y python3.5-dev
sudo pip3 install --upgrade pip
sudo pip3 install --upgrade django==2.1
sudo pip3 install --upgrade gunicorn
#sudo pip3 install mysqlclient
#sudo pip3 install django-seed
#sudo pip3 install psycopg2-binary
