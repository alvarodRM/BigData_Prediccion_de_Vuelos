import subprocess
import os

# opening the file in read mode
file = open("/home/vagrant/practica_big_data_2019/resources/airflow/constraints.txt", "r")
replacement = ""
# using the for loop
for line in file:
    line = line.strip()
    changes = line.replace('numpy==1.20.3', 'numpy==1.21.5')
    replacement = replacement + changes + "\n"
file.close()
# opening the file in write mode
fout = open("/home/vagrant/practica_big_data_2019/resources/airflow/constraints.txt", "w")
fout.write(replacement)
fout.close()

os.chdir("/home/vagrant/practica_big_data_2019/resources/airflow")
subprocess.run(["sudo" , "pip" , "install" , "-r" , "requirements.txt" , "-c" , "constraints.txt"])
os.environ["PROJECT_HOME"] = "/home/vagrant/practica_big_data_2019"
os.environ["AIRFLOW_HOME"] = "/home/vagrant/practica_big_data_2019/resources/airflow"
subprocess.run(["sudo" , "mkdir", "/home/vagrant/practica_big_data_2019/resources/airflow/dags"])
subprocess.run(["sudo" , "mkdir", "/home/vagrant/practica_big_data_2019/resources/airflow/logs"])
subprocess.run(["sudo" , "mkdir", "/home/vagrant/practica_big_data_2019/resources/airflow/plugins"])
subprocess.run(["sudo" , "cp" , "setup.py" , "dags"])
subprocess.run(["sudo" , "rm" , "setup.py" ])
subprocess.run(["airflow" , "db" , "init"])
subprocess.run(["airflow" , "users" , "create" , "-e" , "alvaro@gmail.com" , "-f" , "alvaro" , "-l" , "deRojas" , "-r" , "Admin" , "-u" , "admin2"])
subprocess.run(["airflow" , "users" , "create" , "-e" , "luis@gmail.com" , "-f" , "luis" , "-l" , "lopez" , "-r" , "Admin" , "-u" , "admin1"])
subprocess.run(["airflow", "webserver" , "--port" , "8080"])
