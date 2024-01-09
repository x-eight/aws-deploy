#!/usr/bin/env bash

cd /var/aws-deploy

cp variables/.env /var/aws-deploy

npm install
#npm start

#!/bin/bash

npm run build
npm start