#!/bin/bash

cd /var/www/aws-deploy
yarn install

# Inicia el servidor en segundo plano
#yarn dev

pm2 start src/index.ts