<!-- LAMP (Linux, Apache, MySQL, PHP) stack with PHP 7.4 using Docker -->
# 1. Create a docker-compose.yml file:

# 2. Create a html directory:

# 3. Run Docker Compose:
docker-compose up -d

Access Your PHP Application:
http://localhost:8080

Access phpMyAdmin:
http://localhost:8181

lamp-php74/
│
├── docker-compose.yml
├── html/
│   ├── index.php
│   └── ... (other PHP files)
│
└── Dockerfile

<!-- End -->

<!-- Settings for 7.4.33 FastCGI application -->
 bcmath
 curl
 dba
 dom
 enchant
 fileinfo
 gd
 imagick
 imap
 intl
 json
 ldap
 mbstring
 mysqli
 mysqlnd
 odbc
 opcache
 pdo
 pdo_mysql
 pdo_odbc
 pdo_pgsql
 pdo_sqlite
 pgsql
 phar
 posix
 pspell
 redis
 snmp
 soap
 sodium
 sqlite3
 sysvmsg
 sysvsem
 sysvshm
 tidy
 xdebug option
 xmlreader
 xmlrpc
 xmlwriter
 xsl
 zip

<!-- Config apache2 -->
 <VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined

    Alias /phpmyadmin /var/www/html/phpmyadmin

    <Directory /var/www/html/phpmyadmin>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>

<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html
    ServerName localhost
    <Directory /var/www/html>
        AllowOverride all
    </Directory>
</VirtualHost>
"# docker" 
"# docker" 
