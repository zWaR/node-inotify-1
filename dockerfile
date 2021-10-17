FROM node:16.11.1-buster-slim

ENV NPM_CONFIG_LOGLEVEL warn

RUN apt-get update \
    && apt-get install -y python3 \
    && apt-get install -y build-essential

WORKDIR /usr/src/inotify
COPY . .

RUN npm install
RUN npm install node-gyp@8.2.0
