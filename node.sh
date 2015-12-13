#!/bin/bash
cwd=$(pwd)
# clear
cd

echo "Getting System Dependencies"
sudo apt-get update
sudo apt-get install build-essential libssl-dev

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash

mkdir ~/.profile
source ~/.profile

echo "Installing Node.JS"
sudo apt-get purge nodejs
sudo nvm install v5.2.0

node -v

nvm alias default v5.2.0
nvm use default

cd $cwd

echo "All done Bro!"
