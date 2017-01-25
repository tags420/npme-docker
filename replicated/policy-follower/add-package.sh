#!/usr/bin/env sh
cd /etc/npme/node_modules/@npm/package-whitelist
http_proxy=$PROXY_URL https_proxy=$PROXY_URL node ./bin/package-whitelist.js add-package $@ --white-list-path=$WHITELIST_PATH
