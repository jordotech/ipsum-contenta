#!/bin/bash

#TARGET='root@nomral.com' # the server we're deploying to
TARGET='root@67.207.81.130' # the server we're deploying to

scp -o "StrictHostKeyChecking=no" ./.bashrc ${TARGET}:~/.bashrc
scp -o "StrictHostKeyChecking=no" ./.env-staging ${TARGET}:~/.env

scp -o "StrictHostKeyChecking=no" ./docker-compose.yml ./local.yml ${TARGET}:~
ssh -o "StrictHostKeyChecking=no" ${TARGET} 'bash -s' < ./scripts/pull_and_stop.sh
ssh -o "StrictHostKeyChecking=no" ${TARGET} 'bash -s' < ./scripts/up.sh