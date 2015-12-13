#!/bin/bash
cwd=$(pwd)
# clear
cd
echo "Getting System Dependencies"
sudo apt-get update
sudo apt-get install build-essential libssl-dev

echo "Installing Redis"
sudo apt-get install tcl8.5

cd ~
wget http://download.redis.io/releases/redis-stable.tar.gz
tar xzf redis-stable.tar.gz
cd redis-stable

echo "Building Redis"
make
make test
sudo make install
make test

cd utils
sudo ./install_server.sh
sudo service redis_6379 start

cd $cwd

echo "All Done Bro!"
