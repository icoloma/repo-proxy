This is not an official Google Project.

This repository contains a list of proxy servers for common repositories like Maven and npm. During workshops, hundreds of Gigabytes of data are downloaded from these repositories concurrently, creating a poor developer experience and a bottleneck in the case of multiple workshops starting at the same time. 

This project includes repository proxies, encapsulated as Docker containers that can be used as replacement of the official central repo. These proxies will download dependencies and cache them locally.

# Starting your repo proxies

Review start.sh and uncomment each of the proxy servers that you want to run, and run `./start.sh`. 

All files will be saved in /data in the host machine, so restarting the proxy will not lose any downloaded dependencies.

There is a `test.sh` script for each proxy to check that everything is configured correctly.

# Configuration for each proxy

* Npm will run an npm proxy on 8080
* Maven will run a nexus repository on port 8081 (user: admin, password: admin123)
* Docker will run a registry proxy on port 8082