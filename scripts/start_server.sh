#!/bin/bash

cd /var/aws-deploy
yarn install

# Inicia el servidor en segundo plano
yarn dev
