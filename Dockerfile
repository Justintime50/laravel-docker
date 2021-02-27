ARG VERSION=8.0
FROM justintime50/nginx-php:${VERSION}

COPY /config/nginx.conf /etc/nginx/conf.d/default.conf
