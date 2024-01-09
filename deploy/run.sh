#!/usr/bin/env bash

sudo cp "$HOME/variables/.env" /var/aws-deploy/.env

cd /var/aws-deploy

sudo cp "$HOME/variables/.env" .env

npm install
#npm start

#!/bin/bash

npm run build
npm start