FROM openjdk:11-jre-slim

RUN apt-get install tar

RUN apt-get update; \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
        wget;
RUN wget https://archive.apache.org/dist/kafka/3.0.0/kafka_2.12-3.0.0.tgz
RUN tar xzvf kafka_2.12-3.0.0.tgz
RUN rm kafka_2.12-3.0.0.tgz

EXPOSE 9092

CMD kafka_2.12-3.0.0/bin/kafka-server-start.sh kafka_2.12-3.0.0/config/server.properties

RUN kafka_2.12-3.0.0/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic flight_delay_classification_request