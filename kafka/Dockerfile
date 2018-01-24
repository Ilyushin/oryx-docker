FROM wurstmeister/kafka

EXPOSE 9092

COPY ./bootstrap.sh /usr/bin/.
RUN chmod +x /usr/bin/bootstrap.sh

ENTRYPOINT ["/usr/bin/bootstrap.sh"]
