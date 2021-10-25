#!/usr/bin/dumb-init /bin/bash
# shellcheck shell=bash

SERVER_START_CMD=${SERVER_START_CMD:-"$1"}

if [[ $SERVER_START_CMD == "webhook-triager-server" ]]; then
  exec yarn webhook-srv:dist
elif [[ $SERVER_START_CMD == "nginx-json-api" ]]; then
  exec nginx -g "deamon off"
fi

exec "$@"
