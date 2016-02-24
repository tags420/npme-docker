# Set the base image to Ubuntu
FROM mhart/alpine-node:4.3.1

# File Author / Maintainer
MAINTAINER Ben Coe

COPY ./replicated/npm-auth-ws/start.sh /etc/npme/start.sh
WORKDIR /etc/npme

RUN echo '@npm:registry=https://enterprise.npmjs.com/' > ~/.npmrc
RUN npm install @npm/npm-auth-ws
RUN npm install @npm/npmo-auth-token -g

CMD ["/etc/npme/start.sh"]
