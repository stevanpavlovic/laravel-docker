FROM php:7.1.3-fpm
RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y libmcrypt-dev
RUN apt-get install -y mysql-client
RUN apt-get install -y libmagickwand-dev
RUN apt-get install -y libmagickcore-dev
RUN apt-get install -y unzip zip libzip-dev
RUN pecl install imagick
RUN docker-php-ext-enable imagick
RUN docker-php-ext-install mcrypt pdo_mysql
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN apt-get install -y git
RUN apt-get update && apt-get install -y zlib1g-dev
RUN apt-get install -y ntp
RUN docker-php-ext-configure zip --with-libzip
RUN docker-php-ext-install zip
RUN docker-php-ext-install opcache
COPY ./php/conf.d/opcache.ini /usr/local/etc/php/conf.d/opcache.ini
