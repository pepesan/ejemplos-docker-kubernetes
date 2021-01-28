#!/bin/bash
set -eux
docker-compose down
docker image prune -a -f

