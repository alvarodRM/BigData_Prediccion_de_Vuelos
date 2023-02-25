FROM openjdk:11-jre-slim

RUN apt-get install tar
# RUN apt-get install -y python3 python3-pip
# RUN python -m pip install --upgrade pip

RUN apt-get install -y gnupg
RUN apt-get install -y git
RUN apt-get update; \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
        wget;
RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -
RUN tar xzvf kafka_2.12-3.0.0.tgz
RUN rm kafka_2.12-3.0.0.tgz
RUN git clone https://github.com/ging/practica_big_data_2019.git

RUN echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/4.2 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
RUN apt-get update
RUN apt-get install -y mongodb-org
RUN apt-get install -y mongodb mongodb-clients 
RUN systemctl start mongodb.service

RUN sudo sed -i 's%mongo agile_data_science --eval 'db.origin_dest_distances.ensureIndex({Origin: 1, Dest: 1})'%mongo agile_data_science --eval 'db.origin_dest_distances.createIndex({Origin: 1, Dest: 1})'%g' /home/vagrant/practica_big_data_2019/resources/import_distances.sh    

CMD "/home/vagrant/practica_big_data_2019/resources/import_distances.sh"

EXPOSE 27017 27018