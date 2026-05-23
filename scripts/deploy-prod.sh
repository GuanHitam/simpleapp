#!/bin/bash
set -e

IMAGE=localhost:5000/webserver:latest
CONTAINER=webserver-prod
PORT=8080

podman pull ${IMAGE}

podman rm -f ${CONTAINER} || true

podman run -d \
    --name ${CONTAINER} \
    --restart unless-stopped \
    -p ${PORT}:8080 \
    ${IMAGE}

