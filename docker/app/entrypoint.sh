#!/bin/sh
set -e

# Carrega variáveis do .env
if [ -f .env ]; then
  export $(cat .env | grep -v '#' | xargs)
fi

echo "Aguardando MySQL ficar saudável..."
until php -r "new PDO('mysql:host=${DB_HOST};dbname=${DB_DATABASE}', '${DB_USERNAME}', '${DB_PASSWORD}');" >/dev/null 2>&1; do
  sleep 2
done

echo "MySQL pronto, rodando migrations..."
php artisan migrate --force || true

echo "Subindo Laravel em 0.0.0.0:8000"
php artisan serve --host=0.0.0.0 --port=8000
