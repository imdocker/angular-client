FROM node:8.11.3-jessie

RUN apt-get update && apt-get upgrade npm -y

WORKDIR /usr/src/app

COPY *.json ./

RUN npm install tsd bower gulp -g \
    && bower install --allow-root \
    && tsd reinstall \
    && npm install gulp
