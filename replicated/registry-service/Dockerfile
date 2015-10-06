# Set the base image to Ubuntu
FROM mhart/alpine-node:0.10.40

# File Author / Maintainer
MAINTAINER Ben Coe

COPY ./replicated/registry-service/start.sh /etc/npme/start.sh
WORKDIR /etc/npme

RUN echo '@npm:registry=https://enterprise.npmjs.com/' > ~/.npmrc
RUN npm install @npm/registry-relational-service

EXPOSE 5005

CMD ["/etc/npme/start.sh"]
