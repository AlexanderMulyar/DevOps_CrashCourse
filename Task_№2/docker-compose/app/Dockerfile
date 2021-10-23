FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y software-properties-common && rm -rf /var/lib/apt/lists/

RUN LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php

RUN apt-get update && apt-get install -y nginx php7.2-fpm php7.2-mysql && rm -rf /var/lib/apt/lists/

COPY ./infrastructure /etc/nginx/sites-available

CMD service php7.2-fpm start && nginx -g "daemon off;"

EXPOSE 80

