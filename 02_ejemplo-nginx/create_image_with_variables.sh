#!/bin/bash
set -eux
source .env
docker build -t "$DOCKER_IMAGE_USER/$DOCKER_IMAGE_NAME:latest" .
docker build -t "$DOCKER_IMAGE_USER/$DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG" .
docker login
docker push "$DOCKER_IMAGE_USER/$DOCKER_IMAGE_NAME:latest"