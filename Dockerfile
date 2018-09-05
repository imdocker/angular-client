FROM node:8.11.4-alpine

WORKDIR /usr/src/app

COPY *.json ./

RUN apk update \
    && apk add git \
    && npm install tsd bower gulp -g \
    && bower install --allow-root \
    && tsd reinstall \
    && npm install gulp
