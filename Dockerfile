FROM node:8.11.4-alpine

WORKDIR /usr/src/app

COPY *.json .bowerrc ./

RUN    date \
    && apk --no-cache add  \
       g++ gcc libgcc libstdc++ linux-headers make python git \
    && npm install tsd bower gulp -g \
    && bower install --allow-root \
    && tsd reinstall \
    && npm install gulp \
    && apk upgrade apk --no-cache \
    && date
#   && apk del native-deps

