FROM node:13-alpine as node-angular
LABEL authors="Prosmart - Daniel Diaz"

#Linux setup
RUN apk update \
  && apk add --update alpine-sdk make g++ python git \
  && apk del alpine-sdk \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  # && npm cache verify \
  && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd

RUN npm install -g npm@latest
RUN npm set progress=false
