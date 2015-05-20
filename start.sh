#!/bin/bash

PORT=${PORT:-3000} # port that wordpress will run on
DB_HOST=${DB_HOST:-localhost}
DB_NAME=${DB_NAME:-wordpress}
DB_USER=${DB_USER:-admin}
DB_PASSWORD=${DB_USER:-password}

echo $HOST

#echo "Creating interactive container for wordpress-hhvm-php-fpm-fallback"
#echo "PORT: $PORT"

docker run -i -t --rm -p $PORT:80 --name "wordpress-hhvm-php-fpm-fallback" \
  -e "DB_HOST=$DB_HOST" \
  -e "DB_NAME=$DB_NAME" \
  -e "DB_USER=$DB_USER" \
  -e "DB_PASSWORD=$DB_PASSWORD" \
  docker-wordpress-hhvm-php-fpm-fallback
