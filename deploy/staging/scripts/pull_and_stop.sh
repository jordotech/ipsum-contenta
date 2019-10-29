#!/bin/bash
if [ -n "$1" ]; then
    TAG=${1}
else
    TAG='latest'
fi
export DOCKER_TAG=$TAG
docker-compose pull
docker-compose down
