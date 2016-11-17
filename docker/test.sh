#!/bin/bash

# Pull an image from the proxy
docker pull google/debian localhost:8443

# Run an image pulling from the proxy
docker run https://localhost:443/google/debian

# Kubernetes users: just use the full URL format like in the example above