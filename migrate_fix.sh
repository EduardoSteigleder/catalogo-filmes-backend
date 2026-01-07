#!/usr/bin/env bash
set -e

# Rode dentro da pasta backend/ (onde está o docker-compose.yml)

echo "1) Validar sintaxe da migration (PHP lint)"
docker-compose exec app php -l database/migrations/2026_01_03_022905_create_favorites_table.php

echo
echo "2) Limpar cache de config e rodar migrations"
docker-compose exec app php artisan config:clear
docker-compose exec app php artisan migrate --force

echo
echo "3) (Opcional) Ver status das migrations"
docker-compose exec app php artisan migrate:status
