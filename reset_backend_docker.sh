#!/usr/bin/env bash
set -e

# Rode este script dentro da pasta backend/
# No Windows, execute estes comandos manualmente no CMD/PowerShell se não tiver bash

docker-compose down -v
docker-compose up -d --build
docker-compose ps
