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
3. Execute as migrations  
4. Inicie o servidor  

Comandos:

composer install  
php artisan migrate  
php artisan serve  

A API ficará disponível em:
http://127.0.0.1:8000

---

## 🚀 Tecnologias utilizadas

- PHP 8+
- Laravel
- MySQL
- Docker
- Docker Compose

---

## 📁 Estrutura do projeto
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
├── public/
├── routes/
│   └── api.php
├── storage/
├── tests/
├── .env
├── artisan
└── composer.json
```
---

## ⭐ Funcionalidades

- Integração com a API do TMDB
- Endpoint de busca de filmes
- CRUD de filmes favoritos
- Persistência de dados em banco de dados
- API REST consumida pelo frontend

---

## 📌 Observações importantes

- O arquivo `.env` está **commitado propositalmente neste repositório**
- Embora **não seja uma boa prática em ambientes reais**, essa decisão foi tomada para:
  - Agilizar testes
  - Facilitar a execução do projeto por avaliadores
  - Evitar configurações manuais adicionais
- As credenciais presentes no `.env` são **exclusivamente para fins de estudo e teste**
- Em ambiente produtivo, o `.env` **não deve ser versionado**
- Este backend é consumido por um frontend desenvolvido em Vue.js (repositório separado)

---

## 🔗 Repositório

https://github.com/EduardoSteigleder/catalogo-filmes-backend
