FROM php:7.2.16-apache-stretch AS base

RUN requirements="nano cron curl git zip unzip mariadb-client libpng-dev libcurl3-dev libxml2-dev libfreetype6 libjpeg62-turbo libpng-dev libfreetype6-dev libjpeg62-turbo-dev" \
  && apt-get update \
  && apt-get install -y --no-install-recommends $requirements \
  && rm -rf /var/lib/apt/lists/* \
  && docker-php-ext-install pdo pdo_mysql \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install gd \
  && docker-php-ext-install mbstring \
  && docker-php-ext-install soap \
  && docker-php-ext-install mysqli \
  && requirementsToRemove="libpng-dev libcurl3-dev libxml2-dev libpng-dev libfreetype6-dev libjpeg62-turbo-dev" \
  && apt-get purge --auto-remove -y $requirementsToRemove

RUN a2enmod headers
RUN a2enmod rewrite

# Add configuration files
COPY container-files/ /
WORKDIR /var/www/html

EXPOSE 80
#
# Development
#

FROM base AS development
# Copy over composer
COPY --from=composer:1.8 /usr/bin/composer /usr/bin/composer
ENV COMPOSER_ALLOW_SUPERUSER 1

WORKDIR /var/www/html

# Copy the composer files only initially to prevent changes in the rest
# of the repo from invalidating the caching of the composer install
COPY composer.* ./

RUN composer install \
  --no-interaction \
  --no-progress \
  --no-suggest \
  --no-scripts \
  --no-plugins \
  --no-autoloader

COPY . ./

RUN composer dump-autoload \
  --no-interaction \
  --no-scripts \
  --no-plugins \
  --optimize

