#! /usr/bin/env bash
LOGFILE="/var/tmp/stuff.log"

echo "[$(date +'%Y-%m-%d %H:%M:%S')] $(/opt/clover/package)" | tee -a $LOGFILE
echo
echo "site access test:"
set -x
curl localhost:8080/foo/bar/
set +x
