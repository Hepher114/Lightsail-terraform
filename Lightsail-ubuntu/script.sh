#!/bin/bash

sudo apt-get update 
sudo apt-get install -y apache2
sudo systemctl enable apache2
sudo systemctl start apache2
sudo systemctl status apache2
echo "<h1>Ubuntu Lightsail</h1>" > /var/www/html/index.html
