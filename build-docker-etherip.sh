#!/bin/bash

# Bash script to build a Docker image
# Aureo Freitas
# Controls Group - LNLS

. ./env-vars.sh

docker build -t ${DOCKER_MANTAINER_NAME}/${DOCKER_NAME}:${DOCKER_TAG} .

