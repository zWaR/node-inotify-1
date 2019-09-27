FROM node:12.10.0-stretch-slim

ENV NPM_CONFIG_LOGLEVEL warn

WORKDIR /usr/src/inotify
COPY . .

RUN apt update \
    && apt upgrade \
    && apt install -y python \
    && yarn add -D node-gyp
