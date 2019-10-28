#!/bin/bash
if [ -n "$1" ]; then
    TAG=${1}
else
    TAG='latest'
fi
#docker build --rm=false -f DockerfileBase -t jordotech/ipsum_php_base:$TAG . && docker push jordotech/ipsum_php_base:$TAG
docker build --rm=false -t jordotech/ipsum_php:$TAG . && docker push jordotech/ipsum_php:$TAG
