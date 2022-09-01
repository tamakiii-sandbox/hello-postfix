FROM php:5.6-fpm

RUN apt-get -y update && \
    apt-get install -y \
      ssmtp \
      mailutils

COPY docker/php/etc/ssmtp/ssmtp.conf /etc/ssmtp/ssmtp.conf
