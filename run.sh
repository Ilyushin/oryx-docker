#!/usr/bin/env bash

docker rmi -f cdh-oryx
docker build -t cdh-oryx ./cdh/
#docker stop cdh-oryx
#docker rm cdh-oryx

docker run --name cdh-oryx --hostname=quickstart.cloudera --privileged=true -t -i -P -d cdh-oryx /bin/bash



