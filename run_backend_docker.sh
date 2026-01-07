#!/usr/bin/env bash
set -euo pipefail

# Backend (Laravel) + MySQL
cd backend

# build + up
docker-compose up -d --build

echo "API: http://localhost:8000"
