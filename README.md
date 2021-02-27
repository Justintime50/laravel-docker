<div align="center">

# Laravel Docker Image

A simple Laravel Docker image.

[![Build Status](https://github.com/Justintime50/laravel-docker/workflows/build/badge.svg)](https://github.com/Justintime50/laravel-docker/actions)
[![Image Size](https://img.shields.io/docker/image-size/justintime50/laravel)](https://hub.docker.com/repository/docker/justintime50/laravel)
[![Docker Pulls](https://img.shields.io/docker/pulls/justintime50/laravel)](https://hub.docker.com/repository/docker/justintime50/laravel)
[![Licence](https://img.shields.io/github/license/justintime50/laravel-docker)](LICENSE)

</div>

This image uses the `justintime50/nginx-php` docker image as its base which contains most everything a Laravel app would need out of the box. This image extends on the base by linking the storage directory, copying the project over from `/src`, setting permissions, and clearing cache for Laravel.

## Install

```bash
# Dockerfile
FROM: justintime50/laravel:latest

# docker-compose
image: justintime50/laravel:latest
```

## Usage

Edit the Laravel instance to your needs and place it inside `/src` to get started with this image. This can be achieved by using a volume in a `docker-compose` file or by copying them in a `Dockerfile`.

Want to give this image a spin? Simply run the following:

```bash
docker-compose up -d
```

## Docker Tags

- `latest` - uses the latest explicitly requested release on the PHP Alpine track.
- `8.0` - uses the latest release of the `justintime50/nginx-php:8.0` track.
- `7.4` - uses the latest release of the `justintime50/nginx-php:7.4` track.
- `dev` - the testing branch for this image. Do not use this tag in production.

## Building New Versions

This image supports swapping in the version number of PHP with a value from the official `PHP-FPM Alpine` [tag list](https://hub.docker.com/_/php).

**Automated Builds**

GitHub Actions will automatically build and push supported tags to the Docker Hub on each new release.

**Manual Builds**

```bash
docker build -t justintime50/laravel:8.0 --build-arg VERSION=8.0 .

sudo docker push justintime50/laravel:8.0
```
