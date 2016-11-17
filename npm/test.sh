#!/bin/bash

# To use the proxy from npm
npm --proxy http://localhost:8080 --https-proxy http://localhost:8080 --strict-ssl false install

# After running for the first time you should see this:
#[INFO] proxy - Listening on 0.0.0.0:8080 [1]
#[WARN] proxy - direct http://registry.npmjs.org/lodash

# After successful completion, remove node_modules and run again to see this:
#[2016-11-16 13:21:26.820] [INFO] proxy - cache http://registry.npmjs.org/lodash

# Check: (should not be empty)
# ls -la /data/npm
