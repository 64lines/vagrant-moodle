FROM php:7.1-apache

EXPOSE 80

RUN curl -O https://download.moodle.org/download.php/direct/stable33/moodle-3.3.1.tgz

RUN tar -xvf moodle-3.3.1.tgz

RUN rm moodle-3.3.1.tgz

RUN chmod -R g+w /var/www/html

RUN chmod 777 /var/www

RUN apt-get update

RUN apt-get install -y vim zlib1g-dev libxml2-dev libjpeg-dev libpng-dev libfreetype6-dev

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ 

RUN docker-php-ext-install zip mysqli xmlrpc gd soap
