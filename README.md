Docker container that runs the HHVM vm, along with a php-fpm fallback, with nginx as the server

This has no php files in it, so you need to load the relevant php code into `/usr/share/nginx/www/`

##How to use

To start the server just use

    ./start.sh

To boot this into an interactive shell you can use

    ./interactive.sh


## With Wordpress

A variant of this repo exists with Wordpress packaged in it, you can find it at the following link:

https://github.com/lingz/docker-wordpress-hhvm-php-fpm-fallback

##Reference

1. https://github.com/CenturyLinkLabs/ctlc-docker-wordpress
2. https://github.com/nikolaplejic/docker.hhvm
3. https://github.com/eugeneware/docker-wordpress-nginx
4. https://github.com/tutumcloud/tutum-docker-wordpress-nosql
5. http://www.flockport.com/deploy-wordpress-with-hhvm-and-php-fpm-as-fallback/
6. https://rtcamp.com/tutorials/php/hhvm-with-fpm-fallback/
7. https://bjornjohansen.no/hhvm-with-fallback-to-php
8. https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-ubuntu-12-04:w
