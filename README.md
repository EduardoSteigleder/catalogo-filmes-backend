# 🎬 Catálogo de Filmes — Backend

Backend da aplicação **Catálogo de Filmes**, desenvolvido em **Laravel**, responsável pela API REST, integração com a API do TMDB e gerenciamento de filmes favoritados em banco de dados.

---

## 🚀 Executar o Backend (Docker Compose)

> Antes de iniciar, certifique-se de que o **Docker Desktop esteja rodando**.

Na raiz do projeto backend, execute:

docker run -v "$(pwd)":/app -w /app composer:2 composer install  
docker-compose up -d

A API ficará disponível em:
http://127.0.0.1:8000

---

## ⚙️ Executar em modo desenvolvimento (sem Docker)

1. Acesse a pasta backend  
2. Instale as dependências  
3. Configure o ambiente  
4. Execute as migrations  
5. Inicie o servidor  

Comandos:

composer install  
cp .env.example .env  
php artisan key:generate  

Configure no `.env`:
- Conexão com o banco de dados
- Chave da API do TMDB

Execute as migrations:

php artisan migrate  

Inicie o servidor:

php artisan serve  

A API ficará disponível em:
http://127.0.0.1:8000

---

## 🚀 Tecnologias utilizadas

- PHP 8+
- Laravel
- MySQL
- SQLite (opcional)
- Docker
- Docker Compose

---

## 📁 Estrutura do projeto

backend/
├── app/
│   ├── Http/
│   │   ├── Controllers/
│   │   └── Requests/
│   ├── Models/
├── bootstrap/
├── config/
├── database/
│   ├── migrations/
│   ├── seeders/
│   └── database.sqlite
├── public/
├── routes/
│   └── api.php
├── storage/
├── tests/
├── .env.example
├── artisan
└── composer.json

---

## ⭐ Funcionalidades

- Integração com a API do TMDB
- Endpoint de busca de filmes
- CRUD de filmes favoritos
- Persistência de dados em banco de dados
- API REST consumida pelo frontend

---

## 📌 Observações

- A chave da API do TMDB é obrigatória para funcionamento
- O backend pode utilizar SQLite ou MySQL
- Este backend é consumido por um frontend desenvolvido em Vue.js (repositório separado)

---

## 🔗 Repositório

https://github.com/EduardoSteigleder/catalogo-filmes-backend
