# Getting OS and installing apt-get packages
FROM		debian:buster
WORKDIR		/srcs
RUN			apt-get -y update && apt-get -y upgrade
RUN			apt-get -y install vim openssl nginx wordpress \
			php7.3 php7.3-fpm php7.3-mbstring php7.3-gd php7.3-mysql \
			php7.3-cli php7.3-gmp php7.3-curl php7.3-intl php7.3-xmlrpc \
			php7.3-xml php7.3-zip php7.3-common default-mysql-server

# Installing phpMyAdmin and wordpress to nginx root
ADD			https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz phpmyadmin.tar.gz
RUN			tar -xf phpmyadmin.tar.gz && mv phpMyAdmin-5.0.2-all-languages /var/www/html/phpmyadmin
RUN			cp -r /usr/share/wordpress /var/www/html/ && rm /var/www/html/wordpress/wp-config.php
# Setting nginx root owner
RUN			chown -R www-data /var/www/html

# Copy srcs to container
# Php debug page: RUN echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php
COPY		srcs/createdb.sql srcs/entrypoint.sh srcs/toggleautoindex.sh ./
RUN			chmod +x entrypoint.sh toggleautoindex.sh
COPY		srcs/config.inc.php /var/www/html/phpmyadmin/
COPY		srcs/wp-config.php /var/www/html/wordpress/
COPY		srcs/localhost.conf /etc/nginx/sites-available/localhost
RUN			ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/localhost && \
			rm /etc/nginx/sites-enabled/default

# Creating user and database from sql script
RUN			service mysql start && mysql < createdb.sql

# Creating SSL Certificates
RUN			openssl dhparam -out /etc/ssl/certs/dhparam.pem 1024
RUN			openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
			-keyout /etc/ssl/private/localhost.key \
			-out /etc/ssl/certs/localhost.crt \
			-subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=localhost"

# Open HTTP and HTTPS ports
EXPOSE		80 443

# Create server entrypoint on script
ENTRYPOINT	bash entrypoint.sh
