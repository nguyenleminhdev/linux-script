#!/usr/bin/env bash

wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add - \
&& \
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list \
&& \
sudo apt-get update -y \
&& \
sudo apt-get install -y mongodb-org \
&& \
sudo systemctl start mongod \
&& \
sudo systemctl enable mongod \
&& \
sudo systemctl status mongod

# run script: 
# bash <(curl -s https://raw.githubusercontent.com/nguyenleminhdev/linux-script/master/install-mongo.sh)