#!/usr/bin/env bash

# Definir la ubicación del archivo .env
ENV_FILE="/var/aws-deploy/.env"

# Crear o sobrescribir el archivo .env con las variables de entorno actuales
env | grep -E "^(VARIABLE=|OTHER=)" > "$ENV_FILE"

# Asegurarse de que el archivo tenga permisos adecuados
chmod 600 "$ENV_FILE"

#sudo cp "$HOME/variables/.env" /var/aws-deploy/.env

cd /var/aws-deploy

#sudo cp "$HOME/variables/.env" .env

npm install

#!/bin/bash

npm run build
npm start