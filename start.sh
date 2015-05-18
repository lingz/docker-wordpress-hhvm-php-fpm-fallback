#!/bin/bash

PORT=${PORT:-3000}

if [ $# -eq 0 ]
  then
    echo "First argument must be directory of theme"
    exit
fi

THEME_NAME="$(basename $1)"

echo "Creating temporary container for theme name: $THEME_NAME"
echo "PORT: $PORT"

docker run -i -t --rm -p 80:$PORT --name $THEME_NAME -v $1:/usr/share/nginx/www/wp-content/themes/$THEME_NAME docker-wordpress-nginx
