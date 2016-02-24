# Set the base image to Ubuntu
FROM mhart/alpine-node:4.3.1

# File Author / Maintainer
MAINTAINER Ben Coe

WORKDIR /etc/npme
COPY ./replicated/newww/start.sh /etc/npme/start.sh
COPY ./replicated/newww/homepage.sh /etc/npme/homepage.sh

RUN echo '@npm:registry=https://enterprise.npmjs.com/' > ~/.npmrc
RUN apk update
RUN apk add bash
RUN apk add python
RUN apk add make
RUN apk add g++
RUN npm install node-gyp -g
RUN npm install newww
RUN npm install @npm/npmo-auth-callbacks
RUN npm install npm-explicit-installs
RUN apk del python
RUN apk del make
RUN apk del g++
RUN rm -rf /var/cache/apk/*

CMD ["/etc/npme/start.sh"]
