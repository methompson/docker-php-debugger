FROM php:7-fpm

#RUN mkdir -p /srv/composer

#WORKDIR /srv/composer

#run apt update && apt install zip git -y

#RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
#Have to get the most up to date version with a proper Hash
#RUN php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
#RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer

RUN pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini