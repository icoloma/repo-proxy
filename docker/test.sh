#!/bin/bash

curl -I http://localhost:8082/v2/
curl http://localhost:8082/v2/_catalog

# add these to /etc/default/docker
# WARNING: Ubuntu >= 15 would need to edit extra files, see
# http://stackoverflow.com/questions/30127580/docker-opts-in-etc-default-docker-ignored
# Edit file /lib/systemd/system/docker.service
# 
# ...
# [Service]
# ExecStart=/usr/bin/docker -d -H fd:// $DOCKER_OPTS
# ...
# EnvironmentFile=-/etc/default/docker
# ...
# Then execute
# 
# systemctl daemon-reload
# systemctl restart docker

DOCKER_OPTS="--registry-mirror http://localhost:8082  --insecure-registry http://localhost:8082"

# Pull an image from the proxy
docker pull wordpress 

