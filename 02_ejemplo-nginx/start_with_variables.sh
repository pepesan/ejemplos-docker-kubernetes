#!/bin/bash
set -eux
source .env
docker run --name "$DOCKER_CONTAINER_NAME" -p "$NGINX_DEFAULT_PORT":80 -d "$DOCKER_IMAGE_USER/$DOCKER_IMAGE_NAME:latest"