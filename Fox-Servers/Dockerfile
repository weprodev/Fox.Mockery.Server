FROM php:8-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql sockets
RUN apk update \
    && apk --no-cache --update add build-base

RUN curl -sS https://getcomposer.org/installer | php -- \
     --install-dir=/usr/local/bin --filename=composer

RUN apk add git

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN git clone https://github.com/weprodev/Fox.Mockery.Framework.git

WORKDIR /var/www/html/Fox.Mockery.Framework

RUN cp .env.example .env
RUN composer install

