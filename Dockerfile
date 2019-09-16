FROM php:7.2-apache

COPY php.ini /usr/local/etc/php/
# usage: /usr/local/bin/docker-php-ext-install [-jN] ext-name [ext-name ...]
#   ie: /usr/local/bin/docker-php-ext-install gd mysqli
#       /usr/local/bin/docker-php-ext-install pdo pdo_mysql
#       /usr/local/bin/docker-php-ext-install -j5 gd mbstring mysqli pdo pdo_mysql shmop

RUN apt-get update && apt-get install -y \
  libfreetype6-dev libjpeg62-turbo-dev libpng-dev libmcrypt-dev \
  git vim unzip \
  && docker-php-ext-install gd mysqli pdo pdo_mysql mbstring \
  && docker-php-ext-install -j5 gd mbstring mysqli pdo pdo_mysql shmop\
  && docker-php-ext-install gd iconv shmop \
  && apt-get clean

# install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

