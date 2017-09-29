FROM 2dotstwice/nginx-php71-symfony

# PHP configuration for development
RUN sed -i -e "s/opcache.validate_timestamps=0/opcache.validate_timestamps=1/g" ${PHP_CONFIG_DIR}/fpm/conf.d/99-custom.ini

# Symfony nginx configuration for development
# based on http://symfony.com/doc/current/setup/web_server_configuration.html#web-server-nginx
ADD ./files/etc/nginx/symfony/666-dev.conf /etc/nginx/symfony/666-dev.conf
