import subprocess
import os

os.chdir("/home/vagrant/herramientasFBID/kafka_2.12-3.0.0/")
subprocess.run(["sudo" , "bin/kafka-server-start.sh" , "config/server.properties"])