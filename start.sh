#!/bin/bash
# Configure to start all proxies
# Run as the user that will run the containers

# create the folder for all repositories
sudo mkdir /data
sudo chown ${USER} /data
echo 'Created by repo-proxy. This folder contains all the repositories' > /data/README

# Install docker
sudo apt-get install docker.io

# Uncomment for each repository proxy to install
# maven/run.sh
# npm/run.sh
# docker/run.sh

# Run each one of these to tets that your environment is correctly configured
# maven/test.sh
# npm/test.sh
# docker/test.sh
