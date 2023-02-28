#!/bin/bash

# Install node.js
sudo apt install curl 
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc  
nvm install 16
nvm use 16
npm install -g pnpm

# Install forever module 
# https://www.npmjs.com/package/forever
sudo npm install forever -g
