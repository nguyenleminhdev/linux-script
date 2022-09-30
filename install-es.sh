#!/usr/bin/env bash

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo gpg --dearmor -o /usr/share/keyrings/elasticsearch-keyring.gpg \
&& \
sudo apt-get install apt-transport-https -y \
&& \
echo "deb [signed-by=/usr/share/keyrings/elasticsearch-keyring.gpg] https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-7.x.list \
&& \
sudo apt-get update -y \
&& \
sudo apt-get install elasticsearch  -y \
&& \
sudo apt-get install kibana -y \
&& \
sudo /bin/systemctl daemon-reload \
&& \
sudo /bin/systemctl enable elasticsearch.service \
&& \
sudo systemctl start elasticsearch.service \
&& \
sudo /bin/systemctl enable kibana.service \
&& \
sudo systemctl start kibana.service \
&& \
sudo systemctl status elasticsearch.service \
&& \
sudo systemctl status kibana.service \
&& \
curl -XGET http://localhost:9200

# run script: 
# bash <(curl -s https://raw.githubusercontent.com/nguyenleminhdev/linux-script/master/install-es.sh)