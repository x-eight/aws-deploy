#!/bin/bash

cd /var/www/aws-deploy
yarn install

# Inicia el servidor en segundo plano
yarn dev &

# Espera hasta que el servidor esté disponible (ejemplo: espera 30 segundos)
counter=0
while [ $counter -lt 30 ] && ! nc -z localhost 5000; do
    sleep 1
    ((counter++))
done