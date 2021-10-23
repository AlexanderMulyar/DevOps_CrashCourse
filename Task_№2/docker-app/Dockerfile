FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y software-properties-common && rm -rf /var/lib/apt/lists/

RUN LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php

RUN apt-get update && apt-get install -y curl git nginx php7.2-cli php7.2-fpm php7.2-intl php7.2-mysql php7.2-mbstring php7.2-zip php7.2-xml && rm -rf /var/lib/apt/lists/

COPY ./infrastructure /etc/nginx/sites-available

COPY ./src /var/www/app

CMD service php7.2-fpm start && nginx -g "daemon off;"

EXPOSE 80
