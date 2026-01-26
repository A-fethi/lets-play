#!/usr/bin/env bash
set -e

docker run --name lets-play \
  -e MONGO_INITDB_ROOT_USERNAME=bloguser \
  -e MONGO_INITDB_ROOT_PASSWORD=blogpass \
  -e MONGO_INITDB_DATABASE=lets-play \
  -p 27017:27017 \
  -d mongo:7

# docker run --name lets-play ` 
#   -e MONGO_INITDB_ROOT_USERNAME=bloguser `
#   -e MONGO_INITDB_ROOT_PASSWORD=blogpass `
#   -e MONGO_INITDB_DATABASE=blogdb `
#   -p 27017:27017 `
#   -d mongo:7
