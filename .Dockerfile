# Use the official PHP image with version 7.4.33
FROM php:7.4.33-fpm

# Install required system dependencies
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libwebp-dev \
    libxml2-dev \
    libzip-dev \
    libonig-dev \
    libcurl4-openssl-dev \
    libenchant-dev \
    libgmp-dev \
    libicu-dev \
    libldap2-dev \
    libpq-dev \
    libsqlite3-dev \
    libtidy-dev \
    libxslt1-dev \
    libsnmp-dev \
    libssl-dev \
    libmagickwand-dev \
    libpspell-dev \
    libonig-dev \
    libgmp-dev \
    libldb-dev \
    libedit-dev \
    libbz2-dev \
    libreadline-dev \
    librecode-dev \
    unixodbc-dev

# Install PHP extensions
RUN docker-php-ext-install \
    bcmath \
    calendar \
    dba \
    dom \
    enchant \
    exif \
    fileinfo \
    gd \
    gettext \
    gmp \
    imap \
    intl \
    ldap \
    mbstring \
    mysqli \
    opcache \
    pdo \
    pdo_mysql \
    pdo_odbc \
    pdo_pgsql \
    pdo_sqlite \
    pgsql \
    phar \
    posix \
    pspell \
    snmp \
    soap \
    sockets \
    sysvmsg \
    sysvsem \
    sysvshm \
    tidy \
    xsl \
    zip

# Install additional PHP extensions that require extra steps
# For example, installing the redis extension using PECL
RUN pecl install redis && docker-php-ext-enable redis

# Install the imagick extension
RUN pecl install imagick && docker-php-ext-enable imagick

# Enable xdebug option
RUN pecl install xdebug && docker-php-ext-enable xdebug

# Other configurations
RUN docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp

# Cleanup
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set recommended PHP.ini settings
# (you may customize these based on your application's requirements)
COPY php.ini /usr/local/etc/php/

# Set the working directory to your application's root
WORKDIR /var/www/html

# Expose port 9000 for PHP-FPM
EXPOSE 9000

# CMD ["php-fpm"]
