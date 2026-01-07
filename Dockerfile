FROM php:8.2-cli

RUN apt-get update && apt-get install -y \
    git unzip \
  && docker-php-ext-install pdo pdo_mysql \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

COPY . .

RUN chmod +x docker/app/entrypoint.sh

EXPOSE 8000

ENTRYPOINT ["sh", "docker/app/entrypoint.sh"]
