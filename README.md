# Catálogo de Filmes Backend

Backend do projeto **Catálogo de Filmes**, desenvolvido em Laravel, utilizando MySQL e Docker.

---

## 🚀 Executar o Backend (BEC)

> Antes de qualquer coisa, garanta que o Docker Desktop esteja rodando.

Na raiz do projeto, execute:

```
bash
docker-compose down
docker-compose up -d
```
API REST desenvolvida em Laravel, responsável pela integração com a API do TMDB e pelo gerenciamento dos filmes favoritados no banco de dados.

## Tecnologias utilizadas

- PHP 8+
- Laravel
- SQLite
- MySQL (opcional)

## Estrutura do projeto
```
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
```
## Funcionalidades

- Integração com a API do TMDB
- Endpoint de busca de filmes
- CRUD de filmes favoritos
- Persistência de dados em banco

## Como executar

1. Acesse a pasta backend
2. Execute composer install
3. Copie .env.example para .env
4. Gere a APP_KEY
5. Configure a chave da API do TMDB
6. Execute as migrations
7. Inicie o servidor com php artisan serve

A API ficará disponível em http://127.0.0.1:8000
