#!/usr/bin/env sh
curl --fail -XGET $COUCH_URL
ret=$?
if [ $ret -ne 0 ]; then
  exit 1
fi

cd /etc/npme/node_modules/@npm/registry-follower/
node ./bin/follow.js start --backend=search --policy=mirror --target=$ES_SERVER --follow=$COUCH_URL
