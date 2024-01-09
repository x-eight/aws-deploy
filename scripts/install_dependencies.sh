#!/bin/bash

# Instalación de Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y yarn

sudo apt install nodejs
sudo apt install -y npm

# install pm2 module globaly
npm install -g -y pm2
pm2 update