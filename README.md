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

## ⚙️ Configuração do arquivo `.env` (OBRIGATÓRIO)

Antes de executar o backend, é necessário configurar corretamente o arquivo `.env`.

1. Copie o arquivo de exemplo:
   
cp .env.example .env

2. Configure as variáveis essenciais no `.env`:

### Aplicação

APP_NAME=Laravel  
APP_ENV=local  
APP_KEY=gerado automaticamente  
APP_DEBUG=true  
APP_URL=http://localhost:8000  

> Caso o APP_KEY não exista, gere com:
php artisan key:generate

---

### Banco de Dados (Docker)

O backend utiliza **MySQL rodando em container Docker**.

DB_CONNECTION=mysql  
DB_HOST=mysql  
DB_PORT=3306  
DB_DATABASE=catalogo_filmes  
DB_USERNAME=root  
DB_PASSWORD=root  

> O valor `DB_HOST=mysql` é obrigatório quando o banco roda via Docker Compose.

---

### Sessão

SESSION_DRIVER=database

> As sessões são persistidas no banco de dados.

---

### API do TMDB (OBRIGATÓRIO)

TMDB_API_KEY=SUA_CHAVE_DA_API_DO_TMDB

> Essa chave é **obrigatória** para que a aplicação consiga buscar filmes.  
> Crie sua chave em: https://www.themoviedb.org/settings/api

---

## ⚙️ Executar em modo desenvolvimento (sem Docker)

1. Acesse a pasta backend  
2. Instale as dependências  
3. Configure o `.env`  
4. Execute as migrations  
5. Inicie o servidor  

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

- O arquivo `.env` é essencial para o funcionamento do projeto
- A variável `TMDB_API_KEY` é obrigatória
- O backend depende de um banco MySQL rodando via Docker
- Este backend é consumido por um frontend desenvolvido em Vue.js (repositório separado)

---

## 🔗 Repositório

https://github.com/EduardoSteigleder/catalogo-filmes-backend
