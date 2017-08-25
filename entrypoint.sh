#!/bin/sh

if [ ! -f "$HOME/.kube/config" ]; then
  echo "Kubernetes not initialized yet"
  /usr/local/bin/start.sh && /usr/local/bin/cert.sh
fi

exec "$@"
