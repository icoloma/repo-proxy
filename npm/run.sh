#!/bin/bash
# Pulls npm-proxy-cache
# Source: https://github.com/kudos/docker-npm-proxy-cache

# TODO: check permissions 750 
mkdir -p /data/npm && chown -R ${USER} /data/npm && chmod 777 /data/npm

# docker pull kudoz/npm-proxy-cache
docker run --name npm --restart=on-failure --net=host -p 8080:8080 -v /data/npm:/cache -t kudoz/npm-proxy-cache