FROM php:8.2-cli

RUN apt-get update && apt-get install -y \
    git unzip curl \
  && docker-php-ext-install pdo pdo_mysql \
  && rm -rf /var/lib/apt/lists/*

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/usr/local/bin \
    --filename=composer

WORKDIR /var/www/html

# Leverage layer cache: install dependencies before copying full source
COPY composer.json composer.lock ./

# Install deps without running scripts yet (artisan isn't copied yet)
RUN composer install --no-interaction --prefer-dist --no-progress --no-scripts

# Copy the rest of the application
COPY . .

# Now run scripts (artisan exists now)
RUN composer install --no-interaction --prefer-dist --no-progress

RUN chmod +x docker/app/entrypoint.sh

EXPOSE 8000

ENTRYPOINT ["sh", "docker/app/entrypoint.sh"]