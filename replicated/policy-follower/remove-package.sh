#!/usr/bin/env sh
cd /etc/npme/node_modules/@npm/package-whitelist
node ./bin/package-whitelist.js remove-package $@ --white-list-path=$WHITELIST_PATH --couch-url=$COUCH_URL
pgrep node | xargs kill -9
