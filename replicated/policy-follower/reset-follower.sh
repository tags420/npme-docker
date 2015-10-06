#!/usr/bin/env sh
rm /etc/npme/data/sequence
curl -k -X POST ${REPLICATED_INTEGRATIONAPI}/license/v1/restart
