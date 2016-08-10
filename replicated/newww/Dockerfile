# Set the base image to Ubuntu
FROM mhart/alpine-node:4.4.5

# File Author / Maintainer
MAINTAINER Ben Coe

WORKDIR /etc/npme
COPY ./replicated/newww/start.sh /etc/npme/start.sh
COPY ./replicated/newww/homepage.sh /etc/npme/homepage.sh
COPY ./replicated/newww/install-addon.sh /etc/npme/install-addon.sh
COPY ./replicated/newww/remove-addon.sh /etc/npme/remove-addon.sh

RUN echo '@npm:registry=https://enterprise.npmjs.com/' > ~/.npmrc
RUN apk update
RUN apk add bash
RUN apk add python
RUN apk add make
RUN apk add g++
RUN npm install node-gyp -g
RUN npm install @npm/website@4.1.0-alpha8
RUN npm install @npm/npmo-web-proxy@1.6.1
RUN npm install @npm/npmo-auth-callbacks@2.2.1
RUN npm install @npm/annotation-api@1.6.0
RUN npm install npm-explicit-installs@4.0.1
RUN npm install oauth2-server-pg@1.5.0
RUN apk del python
RUN apk del make
RUN apk del g++
RUN rm -rf /var/cache/apk/*

CMD ["/etc/npme/start.sh"]
