FROM cloudera/quickstart

#RUN /home/cloudera/cloudera-manager --express

COPY ../conf-examples /tmp/

RUN cd /tmp/

ADD https://github.com/OryxProject/oryx/releases/download/oryx-2.6.0/compute-classpath.sh ./
ADD https://github.com/OryxProject/oryx/releases/download/oryx-2.6.0/oryx-batch-2.6.0.jar ./
ADD https://github.com/OryxProject/oryx/releases/download/oryx-2.6.0/oryx-run.sh ./
ADD https://github.com/OryxProject/oryx/releases/download/oryx-2.6.0/oryx-serving-2.6.0.jar ./
ADD https://github.com/OryxProject/oryx/releases/download/oryx-2.6.0/oryx-speed-2.6.0.jar ./

RUN chmod +x ./compute-classpath.sh ./oryx-batch-2.6.0.jar ./oryx-run.sh ./oryx-serving-2.6.0.jar ./oryx-speed-2.6.0.jar

#RUN ./oryx-run.sh batch --conf ./als-example.conf
#RUN ./oryx-run.sh speed --conf ./als-example.conf
#RUN ./oryx-run.sh serving --conf ./als-example.conf

#Cloudera Manager
EXPOSE 7180

#Guided tutorial
EXPOSE 80

COPY ./bootstrap.sh /usr/bin/.
RUN chmod +x /usr/bin/bootstrap.sh

ENTRYPOINT ["/usr/bin/bootstrap.sh"]
