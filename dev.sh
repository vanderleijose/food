#!/bin/sh
cp .env.example .env
cp ./app/env ./app/.env
docker-compose up -d
docker-compose exec app composer install
