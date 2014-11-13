############################################################
# Run an npmE server as a docker container!
############################################################

# Set the base image to Ubuntu
FROM bcoe/npme

# File Author / Maintainer
MAINTAINER Ben Coe

# Start the npme services
RUN cd /etc/npme; ndm generate --uid=npme --gid=npme --platform=initd

# Expose ports
EXPOSE 8080

# Set the default directory where CMD will execute
WORKDIR /etc/npme

CMD  service redis-server start | service nginx start | couchdb | npme restart | tail -f ./logs/*
