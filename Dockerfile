FROM cloudera/quickstart

RUN /home/cloudera/cloudera-manager --express

RUN cd /temp/

ADD https://github.com/OryxProject/oryx/releases/download/oryx-2.6.0/compute-classpath.sh /
ADD https://github.com/OryxProject/oryx/releases/download/oryx-2.6.0/oryx-batch-2.6.0.jar /
ADD https://github.com/OryxProject/oryx/releases/download/oryx-2.6.0/oryx-run.sh /tmp/
ADD https://github.com/OryxProject/oryx/releases/download/oryx-2.6.0/oryx-serving-2.6.0.jar /
ADD https://github.com/OryxProject/oryx/releases/download/oryx-2.6.0/oryx-speed-2.6.0.jar /

RUN chmod +x /tmp/compute-classpath.sh /tmp/oryx-batch-2.6.0.jar /tmp/oryx-run.sh /tmp/oryx-serving-2.6.0.jar /tmp/oryx-speed-2.6.0.jar

RUN ./oryx-run.sh batch
RUN ./oryx-run.sh speed
RUN ./oryx-run.sh serving

#Cloudera Manager
EXPOSE 7180

#Guided tutorial
EXPOSE 80