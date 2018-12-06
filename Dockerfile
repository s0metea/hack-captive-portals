FROM alpine:latest
MAINTAINER Mikhail Burov <m.burov@protonmail.com>
RUN apk add --update \
    git \
    bash \
    iw \
    bridge-utils \
    sipcalc \
    nmap \
  && rm -rf /var/cache/apk/*
WORKDIR /home/
RUN wget https://raw.githubusercontent.com/systematicat/hack-captive-portals/master/hack-captive.sh
