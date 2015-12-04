#!/bin/bash

{ cd /etc/npme/node_modules/newww; node server.js; } &
{ cd /etc/npme/node_modules/@npm/npmo-auth-callbacks; node bin/npmo-auth-callbacks.js start --certificate=$CERTIFICATE --redis=$REDIS_URL --entity-id=$ENTITY_ID --assert-endpoint=$ASSERT_ENDPOINT --logout-endpoint=$LOGOUT_ENDPOINT --nameid-format=$NAMEID_FORMAT --sso-login-url=$SSO_LOGIN_URL --sso-logout-url=$SSO_LOGOUT_URL; } &
wait -n
kill 0
