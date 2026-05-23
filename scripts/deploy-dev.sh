#!/bin/bash
set -e

IMAGE=localhost:5000/webserver:latest
CONTAINER=webserver-dev
PORT=8081

podman pull ${IMAGE}

podman rm -f ${CONTAINER} || true

podman run -d \
    --name ${CONTAINER} \
    -p ${PORT}:8080 \
    ${IMAGE}

