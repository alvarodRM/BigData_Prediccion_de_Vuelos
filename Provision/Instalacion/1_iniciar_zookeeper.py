import subprocess
import os

# Inicializamos zookeeper 
os.chdir("/home/vagrant/herramientasFBID/kafka_2.12-3.0.0/")
subprocess.run(["sudo" , "bin/zookeeper-server-start.sh" , "config/zookeeper.properties"])

