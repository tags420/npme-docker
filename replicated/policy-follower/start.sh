#!/usr/bin/env sh
curl --fail -XGET $COUCH_URL
ret=$?
if [ $ret -ne 0 ]; then
  exit 1
fi

cd /etc/npme/node_modules/@npm/policy-follower/
if [ -n "$PROXY_URL" ]; then
  node ./bin/policy-follower.js start --front-door-host=$FRONT_DOOR_HOST --shared-fetch-secret=$SHARED_FETCH_SECRET --couch-url=$COUCH_URL --couch-url-remote=$COUCH_URL_REMOTE --seq-file=$SEQ_FILE --validate-host=$VALIDATE_HOST --front-door-host=$FRONT_DOOR_HOST --white-list-path=$WHITELIST_PATH --proxy=$PROXY_URL
else
  node ./bin/policy-follower.js start --front-door-host=$FRONT_DOOR_HOST --shared-fetch-secret=$SHARED_FETCH_SECRET --couch-url=$COUCH_URL --couch-url-remote=$COUCH_URL_REMOTE --seq-file=$SEQ_FILE --validate-host=$VALIDATE_HOST --front-door-host=$FRONT_DOOR_HOST --white-list-path=$WHITELIST_PATH
fi
