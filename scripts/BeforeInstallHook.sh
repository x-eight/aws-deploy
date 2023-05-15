#!/bin/bash
cd /var/www/editor.drawify/composer
git stash
git clone https://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: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@github.com/x-eight/aws-deploy.git
npm install
npm run build