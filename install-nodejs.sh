#!/usr/bin/env bash

curl -sL https://deb.nodesource.com/setup_12.x -o /tmp/nodesource_setup.sh \
&& \
sudo bash /tmp/nodesource_setup.sh \
&& \
sudo apt install nodejs -y \
&& \
sudo npm i -g pm2 \
&& \
pm2 install pm2-logrotate \
&& \
node -v \
&& \
npm -v \
&& \
pm2 ls

# run script: 
# bash <(curl -s https://raw.githubusercontent.com/nguyenleminhdev/linux-script/master/install-nodejs.sh)