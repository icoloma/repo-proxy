#!/bin/bash
# Pulls docker-registry-proxy. Source:
# https://github.com/docker/docker/blob/v1.6.2/docs/sources/articles/registry_mirror.md
# https://docs.docker.com/registry/deploying/

mkdir -p /data/docker

sudo docker run -p 8082:5000 -d \
  -e MIRROR_SOURCE=https://registry-1.docker.io \
  -e MIRROR_SOURCE_INDEX=https://index.docker.io \
  -v $(pwd)/config.yml:/etc/docker/registry/config.yml \
  -v /data/docker:/var/lib/registry \
  --restart=on-failure \
  --name docker-registry \
  registry:2.6.0-rc.1

