
#FROM ubuntu:trusty
#RUN \
#  apt-get update \
#  && apt-get -y install gettext-base \
#  && apt-get clean \
#  && rm -rf /var/lib/apt/lists/*

FROM node:14-alpine as build

WORKDIR /usr/local/app

COPY . /usr/local/app

RUN npm install

RUN npm run build

FROM nginx:1.19.3-alpine
COPY  --from=build /usr/local/app/dist/docker-env-test /usr/share/nginx/html

EXPOSE 80

ENV ENV_TEST='Some test of docker env variable'

CMD ["/bin/sh",  "-c",  "envsubst < /usr/share/nginx/html/assets/env.sample.js > /usr/share/nginx/html/assets/env.js && exec nginx -g 'daemon off;'"]
