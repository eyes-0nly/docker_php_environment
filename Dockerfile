FROM php:fpm

RUN apt-get update && apt-get install -y zlib1g-dev g++ git libicu-dev zip libzip-dev zip

RUN pecl install xdebug apcu && docker-php-ext-enable xdebug apcu

RUN docker-php-ext-install pdo pdo_mysql intl opcache && docker-php-ext-configure zip && docker-php-ext-install zip