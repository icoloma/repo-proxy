#!/bin/bash
# Create a sonatype Mavne repository connected to Maven Central
# Source: https://github.com/sonatype/docker-nexus
# Credentials are admin / admin123

if [ ! -d /data/nexus ]; then
  mkdir -p /data/nexus
  chmod 777 /data/nexus
  sudo chown -R 200 /data/nexus
fi

# docker pull sonatype/docker-nexus
docker run -d -p 8081:8081 --name nexus --restart=on-failure -v /data/nexus:/sonatype-work sonatype/nexus
