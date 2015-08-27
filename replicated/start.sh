#!/bin/bash
chown -R couchdb:couchdb /etc/npme/couchdb
ndm generate --uid=root --gid=root --platform=initd && service redis-server start | service nginx start | couchdb | npme restart | tail -f ./logs/*

