#!/usr/bin/env bash
curl -sL https://rpm.nodesource.com/setup_lts.x | bash -
#yum install nodejs -y #default-jre ImageMagick
sudo apt install nodejs
sudo apt install -y npm


# install pm2 module globaly
npm install -g pm2
pm2 update
