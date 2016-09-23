#!/bin/bash
echo -n "[?] enter your billing email: "
read billing_email
echo -n "[?] enter your license key: "
read license_key

http_code=$(curl -s -o /dev/null -w "%{http_code}" -k -X POST --data-urlencode "billing_email=$billing_email" --data-urlencode "license_key=$license_key" ${REPLICATED_INTEGRATIONAPI}/license/v1/sync_with_data)

if [ $http_code -eq 404 ]; then
  echo "  license was not found"
elif [ $http_code -eq 403 ]; then
  echo "  license is expired"
elif [ $http_code -eq 204 ]; then
  echo "  license updated \\o/"
  echo "  restarting npmE..."
  curl -k -X POST ${REPLICATED_INTEGRATIONAPI}/license/v1/restart
else
  echo "  error updating license"
fi
