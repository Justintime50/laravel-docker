ARG VERSION=8.0
FROM justintime50/nginx-php:${VERSION}

COPY --chown=www-data:www-data ./src /var/www/html
COPY /config/nginx.conf /etc/nginx/conf.d/default.conf

RUN composer install -q --no-ansi --no-interaction --no-scripts --no-suggest --no-progress --prefer-dist \
    # Link storage dir and set proper permissions
    && chmod -R 775 storage \
    && php artisan storage:link \
    && chmod -R 775 bootstrap/cache \
    # Clear Laravel's cache
    && php artisan optimize:clear
