#!/bin/sh
set -e -o pipefail
# thanks to matchish@stackoverflow: https://stackoverflow.com/a/61831812
IP=$(ip -4 route list match 0/0 | awk '{print $3}')
echo "${IP}   host.docker.internal" | tee -a /etc/hosts
echo "host.docker.internal set to ${IP}"
exec $@
