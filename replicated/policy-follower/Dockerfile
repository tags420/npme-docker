# Set the base image to Ubuntu
FROM mhart/alpine-node:0.10.40

# File Author / Maintainer
MAINTAINER Ben Coe

COPY ./replicated/policy-follower/start.sh /etc/npme/start.sh
COPY ./replicated/policy-follower/manage-whitelist.sh /etc/npme/manage-whitelist.sh
COPY ./replicated/policy-follower/reset-follower.sh /etc/npme/reset-follower.sh
WORKDIR /etc/npme

RUN echo '@npm:registry=https://enterprise.npmjs.com/' > ~/.npmrc
RUN npm install @npm/policy-follower
RUN npm install @npm/package-whitelist
RUN apk update
RUN apk add curl
RUN rm -rf /var/cache/apk/*

CMD ["/etc/npme/start.sh"]
