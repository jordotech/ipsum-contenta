#!/bin/bash
if [ -n "$1" ]; then
    TAG=${1}
else
    TAG='latest'
fi
docker build --rm=false -t jordotech/ipsum_nginx:$TAG . && docker push jordotech/ipsum_nginx:$TAG
