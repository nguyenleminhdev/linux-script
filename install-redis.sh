#!/usr/bin/env bash

sudo apt update -y \
&& \
sudo apt install redis-server -y

# run script: 
# bash <(curl -s https://raw.githubusercontent.com/nguyenleminhdev/linux-script/master/install-redis.sh)