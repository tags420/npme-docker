#!/usr/bin/env sh
cd /etc/npme/node_modules/@npm/npm-auth-ws/

if [ -n "$GITHUB_ORG" ]; then
  node ./bin/npm-auth-ws.js start --front-door-host=$FRONT_DOOR_HOST --github-host=$GITHUB_HOST --shared-fetch-secret=$SHARED_FETCH_SECRET --authentication-method=$AUTHENTICATION_METHOD --authorization-method=$AUTHORIZATION_METHOD --session-handler=$SESSION_HANDLER --reject-unauthorized=$REJECT_UNAUTHORIZED --port=5000 --host=0.0.0.0 --github-org=$GITHUB_ORG
else
  node ./bin/npm-auth-ws.js start --front-door-host=$FRONT_DOOR_HOST --github-host=$GITHUB_HOST --shared-fetch-secret=$SHARED_FETCH_SECRET --authentication-method=$AUTHENTICATION_METHOD --authorization-method=$AUTHORIZATION_METHOD --session-handler=$SESSION_HANDLER --reject-unauthorized=$REJECT_UNAUTHORIZED --port=5000 --host=0.0.0.0
fi
