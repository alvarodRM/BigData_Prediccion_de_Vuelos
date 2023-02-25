import subprocess
import os

# opening the file in read mode
file = open("/home/vagrant/practica_big_data_2019/flight_prediction/src/main/scala/es/upm/dit/ging/predictor/MakePrediction.scala", "r")
replacement = ""
# using the for loop
for line in file:
    line = line.strip()
    changes = line.replace('val base_path= "/Users/admin/IdeaProjects/ging/practica_big_data_2019"', 'val base_path= "/home/vagrant/practica_big_data_2019"')
    replacement = replacement + changes + "\n"
file.close()
# opening the file in write mode
fout = open("/home/vagrant/practica_big_data_2019/flight_prediction/src/main/scala/es/upm/dit/ging/predictor/MakePrediction.scala", "w")
fout.write(replacement)
fout.close()

os.chdir("/home/vagrant/practica_big_data_2019/flight_prediction")
subprocess.run(["sudo" , "touch" , "build.sbt"])
subprocess.run(["sudo" , "sbt"])


