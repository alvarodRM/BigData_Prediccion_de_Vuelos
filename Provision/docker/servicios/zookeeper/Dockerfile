FROM openjdk:11-jre-slim

RUN apt-get install tar
# RUN apt-get install -y python3 python3-pip
# RUN python -m pip install --upgrade pip

RUN apt-get update; \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
        wget;
RUN wget https://dlcdn.apache.org/zookeeper/zookeeper-3.8.0/apache-zookeeper-3.8.0-bin.tar.gz
RUN tar xzvf apache-zookeeper-3.8.0-bin.tar.gz
RUN rm apache-zookeeper-3.8.0-bin.tar.gz

EXPOSE 2181 
# 2888 3888 8080

CMD apache-zookeeper-3.8.0-bin/bin/zookeeper-server-start.sh apache-zookeeper-3.8.0-bin/config/zookeeper.properties