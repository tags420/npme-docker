#!/bin/bash
chown -R npme:npme /etc/npme/data

ndm generate --uid=root --gid=root --platform=initd && service nginx start | npme restart

cron

bash /etc/npme/bin/install-couch-app.sh

tail -f ./logs/*
