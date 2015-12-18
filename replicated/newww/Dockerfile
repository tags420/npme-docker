# Set the base image to Ubuntu
FROM mhart/alpine-node:4.2.3

# File Author / Maintainer
MAINTAINER Ben Coe

WORKDIR /etc/npme
COPY ./replicated/newww/start.sh /etc/npme/start.sh

RUN echo '@npm:registry=https://enterprise.npmjs.com/' > ~/.npmrc
RUN apk update
RUN apk add python
RUN apk add make
RUN apk add g++
RUN npm install node-gyp -g
RUN npm install newww
RUN apk del python
RUN apk del make
RUN apk del g++
RUN rm -rf /var/cache/apk/*

CMD ["/etc/npme/start.sh"]
