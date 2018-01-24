#!/usr/bin/env bash

docker rmi -f cdh-oryx
docker build -t cdh-oryx ./
docker-compose up --verbose -d

