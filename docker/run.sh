#!/bin/bash
# Pulls docker-registry-proxy
# Source: https://github.com/ContainerSolutions/docker-registry-proxy

mkdir -p /data/docker

# Launch docker registry
docker run --name docker-registry -v /data/docker:/tmp/registry-dev registry:2.0

# the registry listens on 8082 and redirects to 443 inside the container
docker run -p 8443:443 \
  --name docker-proxy \
  -e REGISTRY_HOST="docker-registry" \
  -e REGISTRY_PORT="5000" \
  -e SERVER_NAME="localhost" \
  --link docker-registry:docker-registry \
  -v $(pwd)/.htpasswd:/etc/nginx/.htpasswd:ro \
  -v $(pwd)/certs:/etc/nginx/ssl:ro \
  containersol/docker-registry-proxy