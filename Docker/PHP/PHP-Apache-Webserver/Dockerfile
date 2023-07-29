FROM php:8.2.4-apache

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install SQL Server extension
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        unixodbc-dev \
        && \
    pecl install sqlsrv pdo_sqlsrv && \
    docker-php-ext-enable sqlsrv pdo_sqlsrv

COPY ./index.php /var/www/html/

EXPOSE 80

# docker build -t my-php-app .
# docker run -p 80:80 my-php-app
