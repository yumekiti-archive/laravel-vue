FROM php:7.4-fpm

RUN cd /usr/bin && curl -s http://getcomposer.org/installer | php && ln -s /usr/bin/composer.phar /usr/bin/composer

RUN apt update && apt install -y zip unzip libonig-dev libzip-dev libxml2-dev libgd-dev libicu-dev libpq-dev

RUN docker-php-ext-install intl pdo_mysql zip bcmath

#RUN git clone https://github.com/phpredis/phpredis.git /usr/src/php/ext/redis
#RUN docker-php-ext-install pdo_mysql mbstring zip xml gd redis

WORKDIR /var/www/
