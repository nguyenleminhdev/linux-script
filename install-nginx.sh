#!/usr/bin/env bash

sudo apt update -y \
&& \
sudo apt install nginx -y \
&& \
sudo add-apt-repository ppa:certbot/certbot \
&& \
sudo apt-get update -y \
&& \
sudo apt-get install python-certbot-nginx -y \
&& \
sudo systemctl status nginx

# run script: 
# bash <(curl -s https://raw.githubusercontent.com/nguyenleminhdev/linux-script/master/install-nginx.sh)