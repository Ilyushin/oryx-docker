#!/usr/bin/env bash

/usr/bin/docker-quickstart
/home/cloudera/cloudera-manager --express

# Run in daemon mode, don't exit
while true; do
  sleep 100;
done