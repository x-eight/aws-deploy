#!/usr/bin/env bash
sudo cp /etc/profile.d/myenvvars.sh /var/aws-deploy/.env
cd /var/aws-deploy



npm install

#!/bin/bash

npm run build
npm start