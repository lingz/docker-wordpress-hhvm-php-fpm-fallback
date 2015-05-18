#!/bin/bash

PORT=${PORT:-3000}

echo "Creating interactive container for wordpress-hhvm-php-fpm-fallback"
echo "PORT: $PORT"

docker run -i -t --rm -p 80:$PORT --name "wordpress-hhvm-php-fpm-fallback" docker-wordpress-hhvm-php-fpm-fallback /sbin/my_init -- bash -l
