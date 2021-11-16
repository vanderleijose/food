#!/bin/sh
cp .env.example .env
docker-compose up -d
docker-compose exec app cp env .env
