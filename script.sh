#!/bin/bash

echo "Update the system"
sudo apt update -y

echo "Install Utilities"
sudo apt -y install zip unzip

echo "install nginx"
sudo apt -y install nginx

echo "Remove welcome page from document root"
sudo rm -rf /var/www/html/*

echo "Add your project to the document root"
sudo git clone https://github.com/PrajwalP0571/Simple_Shell_Script.git /var/www/html/

echo "check with the IP address"
