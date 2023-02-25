import subprocess
import os

subprocess.run(["sudo" , "python3" , "-m" , "pip" , "install" , "joblib"])
os.environ["PROJECT_HOME"] = "/home/vagrant/practica_big_data_2019"
subprocess.run(["sudo" , "python3" , "/home/vagrant/practica_big_data_2019/resources/web/predict_flask.py"])
