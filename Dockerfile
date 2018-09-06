FROM node:8.11.4-alpine

WORKDIR /usr/src/app

COPY *.json ./

RUN    apk --no-cache add --virtual native-deps \
       g++ gcc libgcc libstdc++ linux-headers make python git \
    && npm install tsd bower gulp -g \
    && bower install --allow-root \
    && tsd reinstall \
    && npm install gulp \
    && apk del native-deps
