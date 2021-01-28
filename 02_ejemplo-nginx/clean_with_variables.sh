#!/bin/bash
set -eux
source .env
docker container rm "$DOCKER_CONTAINER_NAME"
