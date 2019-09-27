FROM node:stretch-slim

ENV NPM_CONFIG_LOGLEVEL warn

WORKDIR /usr/src/inotify
COPY . .

RUN yarn add -D node-gyp
