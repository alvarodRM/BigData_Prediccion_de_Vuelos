import subprocess
import os

os.chdir("/home/vagrant/practica_big_data_2019/resources/airflow/")
os.environ["PROJECT_HOME"] = "/home/vagrant/practica_big_data_2019"
os.environ["AIRFLOW_HOME"] = "/home/vagrant/practica_big_data_2019/resources/airflow"
subprocess.run(["sudo" , "airflow", "scheduler"])