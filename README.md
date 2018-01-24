# oryx-docker
Oryx 2 Docker
This repository contains Dockerfiles for setting up a basic cluster for Oryx 2. The available components are:

HDFS:
namenode
dtanode
YARN:
resourcemanager
nodemanager
Spark submitter
Zookeeper
Kafka

All images inherit from a base hadoop image which provides an hadoop installation in /opt/ and provides a way to configure hadoop via environment variables.

