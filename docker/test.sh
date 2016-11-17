#!/bin/bash

curl -I http://localhost:8082/v2/
curl http://localhost:8082/v2/_catalog

# add these to /etc/default/docker
# WARNING: Ubuntu >= 15 would need to edit extra files, see
# http://stackoverflow.com/questions/30127580/docker-opts-in-etc-default-docker-ignored
DOCKER_OPTS="--registry-mirror http://localhost:8082  --insecure-registry http://localhost:8082"

# Alternatively, run this:
docker --registry-mirror=https://localhost:8082 daemon

# Pull an image from the proxy
docker pull wordpress 
docker pull localhost:8082/wordpress 

# Run an image pulling from the proxy
docker run localhost:8082/wordpress

# Kubernetes users: just use the full URL format like in the example above