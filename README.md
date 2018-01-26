# oryx-docker
Oryx 2 Docker
This repository contains Dockerfiles for setting up a basic cluster for Oryx 2. The available components are:

* Apache Hadoop 
* Apache Zookeeper  
* Apache Spark 

The container uses Cloudera QuickStart Docker image which is single-node deployments of Cloudera's 
100% open-source distribution including Apache Hadoop, and Cloudera Manager. 

For building and creating the container you need to run a script:
```bash
./run.sh
```

There are all components which are required by Oryx except Kafka. Kafka needs to install by hand using Cloudera Manager. 

Steps for installing Kafka:
1. After running the container you should connect to the container and perform some commands:

    ```
    /usr/bin/docker-quickstart
    /home/cloudera/cloudera-manager --express
    ```

2. After this you can open web interface of Clodera Manager via link http://localhost:7180
3. On the opened page need to choose at the top of the page **Parcels**

![img](https://github.com/Ilyushin/oryx-docker/blob/master/images/parcels-button.png)
4. Then need to open **Config** and add URL to Kafka's repository

![img](https://github.com/Ilyushin/oryx-docker/blob/master/images/parcels_config.png)

![img](https://github.com/Ilyushin/oryx-docker/blob/master/images/parcels_config_rep.png)



