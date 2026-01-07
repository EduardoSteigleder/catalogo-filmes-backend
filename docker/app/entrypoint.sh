#!/bin/sh
set -e

echo "Aguardando MySQL ficar saudável..."
# healthcheck já garante, mas mantém um fallback
until php -r "new PDO('mysql:host=mysql;dbname=catalogo_filmes', 'root', 'root');" >/dev/null 2>&1; do
  sleep 2
done

echo "MySQL pronto, rodando migrations..."
php artisan migrate --force || true

echo "Subindo Laravel em 0.0.0.0:8000"
php artisan serve --host=0.0.0.0 --port=8000
