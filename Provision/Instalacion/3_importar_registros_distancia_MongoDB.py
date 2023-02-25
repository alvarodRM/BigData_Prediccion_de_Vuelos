import subprocess
import os

os.chdir("/home/vagrant/herramientasFBID/kafka_2.12-3.0.0/")
subprocess.run(["sudo" , "bin/kafka-topics.sh" , "--create" , "--bootstrap-server" , "localhost:9092" , "--replication-factor" , "1" , "--partitions" , "1" , "--topic" , "flight_delay_classification_request"])
subprocess.run(["sudo" , "apt-get" , "install" , "-y" , "gnupg"])
subprocess.run(["sudo" , "apt-get" , "install" , "-y" , "mongodb"])
subprocess.run(["sudo" , "apt-get" , "install" , "-y" , "mongodb-clients"])
subprocess.run(["sudo" , "systemctl" , "start" , "mongodb.service"])

# opening the file in read mode
file = open("/home/vagrant/practica_big_data_2019/resources/import_distances.sh", "r")
replacement = ""
# using the for loop
for line in file:
    line = line.strip()
    changes = line.replace("mongo agile_data_science --eval 'db.origin_dest_distances.ensureIndex({Origin: 1, Dest: 1})'", "mongo agile_data_science --eval 'db.origin_dest_distances.createIndex({Origin: 1, Dest: 1})'")
    replacement = replacement + changes + "\n"
file.close()
# opening the file in write mode
fout = open("/home/vagrant/practica_big_data_2019/resources/import_distances.sh", "w")
fout.write(replacement)
fout.close()

os.chdir("/home/vagrant/practica_big_data_2019")
subprocess.run(["./resources/import_distances.sh"])


