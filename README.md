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
1. Connect to the container and perform some commands:

    ```
    docker exec -it cdh-oryx /bin/bash
    /usr/bin/docker-quickstart
    /home/cloudera/cloudera-manager --express
    ```

2. Open web interface of Clodera Manager via link http://localhost:7180
3. On the opened page need to choose at the top of the page **Parcels**

![img](https://github.com/Ilyushin/oryx-docker/blob/master/images/parcels-button.png)

4. Open **Config** and add URL of Kafka's repository

![img](https://github.com/Ilyushin/oryx-docker/blob/master/images/parcels_config.png)

![img](https://github.com/Ilyushin/oryx-docker/blob/master/images/parcels_config_rep.png)

5. Download CDH and Kafka

![img](https://github.com/Ilyushin/oryx-docker/blob/master/images/parcels_download.png)

6. Distribute and Activate CDH
7. Distribute and Activate Kafka
8. Type into the search field **Add a Service** and choose following

![img](https://github.com/Ilyushin/oryx-docker/blob/master/images/search_service.png)

9. Choose Kafka from the list of services and click **Continue**
10. Choose **quickstart.cloudera** as a host for Kafka Broker and Kafka MirrorMaker
11. Put **quickstart.cloudera:9092** as on the screen below and click **Continue**:

![img](https://github.com/Ilyushin/oryx-docker/blob/master/images/settings_kafka.png)

12. Service will NOT start (error). Do not navigate away from that screen.
13. Open another Cloudera Manager in another browser tab. You should now see **Kafka** in the list of Services (red, but it should be there). 
Click on the Kafka Service and then "Configure".
14. Search for the **java heap space** Configuration Property. The standard Java Heap Space you'll find already set up should be 50 MBytes. 
Put in at least 256 MBytes. The original value is simply not enough.
15. Now search for the **whitelist** Configuration Property. In the field, put in **(?!x)x** (without the quotation marks). 
That's a regular expression that does not match anything. Given that apparently a Whitelist is mandatory for the Mirrormaker Service to start.
16. Save the changes and go back to the original Configuration Screen on the other browser tab. 
Click **Retry**, or wathever, or even exit that screen and manually restart the Kafka Service in Cloudera Manager.




