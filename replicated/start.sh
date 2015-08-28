#!/bin/bash
chown -R couchdb:couchdb /etc/npme/couchdb
/etc/npme/bin/install-couch-app.sh

ndm generate --uid=root --gid=root --platform=initd && service redis-server start | service nginx start | couchdb | npme restart | tail -f ./logs/*

