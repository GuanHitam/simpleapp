IMAGE=localhost:5000/webserver:latest
CONTAINER=webserver-test
PORT=8082

podman pull ${IMAGE}

podman rm -f ${CONTAINER} || true

podman run -d \
    --name ${CONTAINER} \
    -p ${PORT}:8080 \
    ${IMAGE}


