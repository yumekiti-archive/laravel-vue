FROM php:7.4-fpm

RUN apt update && apt install -y zip unzip libonig-dev libzip-dev libxml2-dev libgd-dev

#RUN git clone https://github.com/phpredis/phpredis.git /usr/src/php/ext/redis
#RUN docker-php-ext-install pdo_mysql mbstring zip xml gd redis

WORKDIR /var/www/
