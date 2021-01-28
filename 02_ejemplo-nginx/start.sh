#!/bin/bash
set -eux
docker run --name mi-nginx -p 80:80 -d pepesan/mi-nginx:latest