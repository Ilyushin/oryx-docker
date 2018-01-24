#!/usr/bin/env bash

docker rmi -f cdh-oryx
docker build -t cdh-oryx ./cdh
docker build -t kafka ./kafka
docker-compose up -d

