#!/bin/bash
cwd=$(pwd)
# clear
cd

echo "Getting System Dependencies"
sudo apt-get update
sudo apt-get install build-essential libssl-dev

echo "Installing JAVA"
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo aptitude -y install oracle-java8-installer

java -version

echo "Installing Cassandra"
mkdir ~/temp
cd ~/temp
echo "deb http://debian.datastax.com/community stable main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list
curl -L https://debian.datastax.com/debian/repo_key | sudo apt-key add -

sudo apt-get update
sudo apt-get install dsc22
sudo apt-get install cassandra-tools

cd $cwd

echo "All Done Bro!"
