#!/bin/bash
set -e

# status URL for Nexus
curl http://localhost:8081/nexus/service/local/status

# test maven
# TBD: document if .maven is required

# test gradle
gradle build