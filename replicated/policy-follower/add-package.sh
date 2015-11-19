#!/usr/bin/env sh
cd /etc/npme/node_modules/@npm/package-whitelist
node ./bin/package-whitelist.js add-package $@ --white-list-path=$WHITELIST_PATH
