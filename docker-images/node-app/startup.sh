#!/bin/sh
ip=$(ifconfig eth0 | awk '/inet addr/ {gsub("addr:", "", $2); print $2}')
echo "$ip xxx.xxx.com" >> /etc/hosts

node ./app.js