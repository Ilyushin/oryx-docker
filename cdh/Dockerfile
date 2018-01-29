FROM cloudera/quickstart

RUN touch /var/lib/rpm/*
RUN yum clean all; \
yum install -y yum-plugin-ovl; \
yum install -y wget && \
yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
yum clean all;

RUN mkdir -p /oryx/

COPY conf-examples /oryx/

ADD https://github.com/OryxProject/oryx/releases/download/oryx-2.6.0/compute-classpath.sh /oryx/
ADD https://github.com/OryxProject/oryx/releases/download/oryx-2.6.0/oryx-batch-2.6.0.jar /oryx/
ADD https://github.com/OryxProject/oryx/releases/download/oryx-2.6.0/oryx-run.sh /oryx/
ADD https://github.com/OryxProject/oryx/releases/download/oryx-2.6.0/oryx-serving-2.6.0.jar /oryx/
ADD https://github.com/OryxProject/oryx/releases/download/oryx-2.6.0/oryx-speed-2.6.0.jar /oryx/

RUN chmod +x /oryx/compute-classpath.sh /oryx/oryx-batch-2.6.0.jar /oryx/oryx-run.sh /oryx/oryx-serving-2.6.0.jar /oryx/oryx-speed-2.6.0.jar

#RUN ./oryx-run.sh batch --conf ./oryx.conf
#RUN ./oryx-run.sh speed --conf ./oryx.conf
#RUN ./oryx-run.sh serving --conf ./oryx.conf

#Cloudera Manager
EXPOSE 7180

#Guided tutorial
EXPOSE 80

EXPOSE 8032

RUN /usr/bin/docker-quickstart
RUN /home/cloudera/cloudera-manager --express

COPY ./bootstrap.sh /usr/bin/.
RUN chmod +x /usr/bin/bootstrap.sh

ENTRYPOINT ["/usr/bin/bootstrap.sh"]
