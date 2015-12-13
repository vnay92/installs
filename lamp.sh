#!/bin/bash
cwd=$(pwd)
# clear
cd
echo "Getting System Dependencies"
sudo apt-get update
sudo apt-get install build-essential libssl-dev

echo "Installing Apache"
sudo apt-get install apache2

sudo apt-get install mysql-server php5-mysql

sudo mysql_install_db
sudo mysql_secure_installation
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt

sudo apt-get install phpmyadmin
sudo php5enmod mcrypt

sudo service apache2 restart
sudo apt-get install php5-cli

sudo apt-get install curl git
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

sudo chown $USER.$GROUP /var/www/ -R

cd $cwd

echo "All Done Bro!"
