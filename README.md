Docker Container running Wordpress + HHVM + Nginx with PHP-FPM fallback

This does not come with mysql installation.

##How to use

First build the container

    ./build.sh

To start the server just use

    PORT=80 DB_HOST="my_wp_host" DB_NAME=wp_test DB_USER=wp_user DB_PASSWORD=wp_pass ./start.sh 

To boot this into an interactive shell you can use

    PORT=80 DB_HOST="my_wp_host" DB_NAME=wp_test DB_USER=wp_user DB_PASSWORD=wp_pass ./interactive.sh

As this container does not contain mysql, you need to set one up separately. You can use a hosted
solution or the following docker image works also:

https://github.com/tutumcloud/tutum-docker-mysql


##References

Based on:
https://github.com/philipz/docker-nginx-hhvm-wordpress

1. https://github.com/CenturyLinkLabs/ctlc-docker-wordpress
2. https://github.com/nikolaplejic/docker.hhvm
3. https://github.com/eugeneware/docker-wordpress-nginx
4. https://github.com/tutumcloud/tutum-docker-wordpress-nosql
5. http://www.flockport.com/deploy-wordpress-with-hhvm-and-php-fpm-as-fallback/
6. https://rtcamp.com/tutorials/php/hhvm-with-fpm-fallback/
7. https://bjornjohansen.no/hhvm-with-fallback-to-php
8. https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-ubuntu-12-04:w
