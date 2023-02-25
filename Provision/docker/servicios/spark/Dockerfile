FROM openjdk:11-jre-slim

RUN apt-get install tar
RUN apt-get install -y python3 python3-pip
RUN python -m pip install --upgrade pip
RUN apt.get install apt-transport-https curl gnupg -yqq
RUN apt-get update; \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
        wget;
RUN wget https://github.com/scala/scala/archive/v2.12.0.tar.gz
RUN tar xzvf v2.12.0.tar.gz
RUN rm v2.12.0.tar.gz

RUN echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | sudo tee /etc/apt/sources.list.d/sbt.list
RUN echo "deb https://repo.scala-sbt.org/scalasbt/debian /" | sudo tee /etc/apt/sources.list.d/sbt_old.list
RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo -H gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/scalasbt-release.gpg --import
RUN sudo chmod 644 /etc/apt/trusted.gpg.d/scalasbt-release.gpg
RUN apt-get update
RUN apt-get install -y sbt

RUN apt-get update; \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
        wget;
RUN wget https://archive.apache.org/dist/spark/spark-3.1.2/spark-3.1.2-bin-hadoop2.7.tgz
RUN apt-get install zip gzip tar
RUN tar xzvf spark-3.1.2-bin-hadoop2.7.tgz
RUN rm spark-3.1.2-bin-hadoop2.7.tgz

ENV JAVA_HOME "/usr/lib/jvm/java-1.11.0-openjdk-amd64/"

RUN sudo mv /herramientasFBID/spark-3.1.2-bin-hadoop2.7 /opt/spark-3.1.2
RUN sudo ln -s /opt/spark-3.1.2 /opt/spark
ENV SPARK_HOME "/opt/spark"
RUN sudo python3 /practica_big_data_2019/resources/train_spark_mllib_model.py /home/vagrant/practica_big_data_2019


RUN sudo sed -i 's%val base_path= "/Users/admin/IdeaProjects/ging/practica_big_data_2019"%val base_path= "/home/vagrant/practica_big_data_2019"%g' /home/vagrant/practica_big_data_2019/flight_prediction/src/main/scala/es/upm/dit/ging/predictor/MakePrediction.scala

RUN cd /home/vagrant/practica_big_data_2019/flight_prediction

RUN sudo touch build.sbt
RUN sudo sbt

EXPOSE 8001 8998 10002

CMD sudo /opt/spark/bin/spark-submit --packages org.mongodb.spark:mongo-spark-connector_2.12:3.0.1,org.apache.spark:spark-sql-kafka-0-10_2.12:3.1.2 /home/vagrant/practica_big_data_2019/flight_prediction/target/scala-2.12/flight_prediction_2.12-0.1.jar