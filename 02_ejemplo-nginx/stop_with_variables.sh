#!/bin/bash
set -eux
source .env
docker container stop "$DOCKER_CONTAINER_NAME"
