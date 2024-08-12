#!/bin/bash

WITH_VOLUME_POD_NAME=$(kubectl get pods -l app=app-with-volume -o jsonpath="{ .items[0].metadata.name }")
echo $WITH_VOLUME_POD_NAME

WITH_ENV_POD_NAME=$(kubectl get pods -l app=app-with-env -o jsonpath="{ .items[0].metadata.name }")
echo $WITH_ENV_POD_NAME

kubectl exec --stdin=true --tty=true $WITH_VOLUME_POD_NAME -- /bin/sh <<EOF
  echo "With volume:"
  cat /etc/secret-volume/name
  echo ""
  cat /etc/secret-volume/year
  echo "\n"
EOF

kubectl exec --stdin=true --tty=true $WITH_ENV_POD_NAME -- /bin/sh <<EOF
  echo "With ENV:"
  echo \$name
  echo \$year
  echo "\n"
EOF
