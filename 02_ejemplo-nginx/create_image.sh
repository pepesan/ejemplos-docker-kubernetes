#!/bin/bash
set -eux
docker build -t pepesan/mi-nginx:latest .
docker login
docker push pepesan/mi-nginx:latest