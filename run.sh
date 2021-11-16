#!/bin/sh
chown $user:$user -R  app
chmod 777 -R app
cp .env.example .env
echo "## COPY .ENV"
docker-compose up -d
docker-compose exec app composer install
echo "## COMPOSER INSTALL ON APP" 
docker-compose exec app cp .env.example .env
docker-compose exec app sleep 20
echo "## CREATE .ENV APP"
docker-compose exec app php artisan key:generate
echo "## KEY GENERATE" 
docker-compose exec app php artisan config:cache
echo "## CLEAR CACHE" 
docker-compose exec app php artisan migrate --seed
echo "## MAKE MIGRATE" 
docker-compose exec app npm install
echo "## NPM INSTALL" 