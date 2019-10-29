#!/bin/bash
if [ -n "$1" ]; then
    TAG=${1}
else
    TAG='latest'
fi
export DOCKER_TAG=$TAG
export MIRROR_ID=$(hostname -a) &&
docker-compose up -d
