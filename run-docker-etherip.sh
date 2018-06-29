#!/bin/bash

#
# Aureo Freitas
# Controls Group - Brazilian Synchrotron Light Source Laboratory - LNLS
#
. ./env-vars.sh

# Runs a new instance of the Docker image
docker run --rm -d --name ${DOCKER_RUN_NAME} ${DOCKER_MANTAINER_NAME}/${DOCKER_NAME}:${DOCKER_TAG}

docker logs -f ${DOCKER_RUN_NAME}
