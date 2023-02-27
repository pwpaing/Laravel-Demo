#!/bin/bash

cd /var/www/laravel
#aws s3 cp s3://aws-codedeploy-deployments/api-env/.env .env
rm composer.lock
sudo /usr/bin/composer install 
sudo php artisan config:clear

sudo chown -R www-data:www-data /var/www/laravel
sudo chmod -R 0777 /var/www/laravel/storage
sudo chmod -R 0777 /var/www/laravel/bootstrap/cache
