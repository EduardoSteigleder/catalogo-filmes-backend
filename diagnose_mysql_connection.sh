#!/usr/bin/env bash
set -e

# Rodar dentro da pasta backend/
# (No Windows, tu pode copiar e rodar os comandos equivalentes no CMD/PowerShell)

echo "== 1) Verificar o que o container APP está enxergando =="
docker-compose exec app sh -lc "pwd; ls -la .env || true; echo '---'; grep -E '^(DB_|APP_URL=)' .env || true; echo '--- ENV ---'; env | grep -E '^(DB_|APP_URL=)' || true; echo '--- DNS ---'; php -r "echo 'mysql resolves to: '.gethostbyname('mysql').PHP_EOL;""

echo
echo "== 2) Teste de conexão PDO direto (sem Laravel) =="
docker-compose exec app php -r "try { new PDO('mysql:host=mysql;port=3306;dbname=catalogo_filmes', 'root', 'root'); echo 'PDO OK'.PHP_EOL; } catch (Exception $e) { echo 'PDO FAIL: '.$e->getMessage().PHP_EOL; }"

echo
echo "== 3) Se PDO OK, roda migrate =="
docker-compose exec app php artisan config:clear
docker-compose exec app php artisan migrate --force

echo
echo "== Se ainda falhar, cola o output inteiro deste script aqui =="
