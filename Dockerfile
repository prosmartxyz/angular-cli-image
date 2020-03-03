FROM node:12.14-alpine as node-angular
LABEL authors="Daniel Díaz"

#Linux setup
RUN apk update \
  && apk add --update alpine-sdk python \
  && apk del alpine-sdk \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  # && npm cache verify \
  && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd

RUN npm set progress=false
RUN npm install -g npm@latest
