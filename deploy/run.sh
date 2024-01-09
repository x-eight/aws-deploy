#!/usr/bin/env bash

cp variables/.env /var/aws-deploy

cd /var/aws-deploy

npm install
#npm start

#!/bin/bash

npm run build
npm start