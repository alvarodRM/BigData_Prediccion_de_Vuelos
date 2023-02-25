import subprocess
import os

os.environ["JAVA_HOME"] = "/usr/lib/jvm/java-1.11.0-openjdk-amd64/"
subprocess.run(["sudo" , "mv" , "/home/vagrant/herramientasFBID/spark-3.1.2-bin-hadoop2.7" , "/opt/spark-3.1.2"])
subprocess.run(["sudo" , "ln" , "-s" , "/opt/spark-3.1.2" , "/opt/spark"])
os.environ["SPARK_HOME"] = "/opt/spark"
subprocess.run(["sudo" , "python3" , "/home/vagrant/practica_big_data_2019/resources/train_spark_mllib_model.py" , "/home/vagrant/practica_big_data_2019"])
