#!/usr/bin/env sh
cd /etc/npme/node_modules/@npm/validate-and-store/
node ./bin/validate-and-store.js start --couch-url=$COUCH_URL --front-door-host=$FRONT_DOOR_HOST --binary-directory=$BINARY_DIRECTORY --reject-unauthorized=$REJECT_UNAUTHORIZED --port=5001 --host=0.0.0.0
