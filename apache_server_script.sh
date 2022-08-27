#!/bin/bash

echo "START"
echo "Updating and upgrading server..."
apt-get update && apt-get upgrade -y

echo "installing apache and unzip..."
apt-get install apache2 -y
apt-get install unzip -y

echo "cloning archives to this project..."
cd /tmp
wget (link)
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "END"
