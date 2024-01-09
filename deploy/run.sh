#!/usr/bin/env bash

sudo cp "$HOME/variables/.env" /var/aws-deploy/.env

cd /var/aws-deploy

npm install
#npm start

#!/bin/bash

npm run build
npm start