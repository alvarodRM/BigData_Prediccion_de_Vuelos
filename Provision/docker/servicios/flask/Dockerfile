FROM openjdk:11-jre-slim

RUN apt-get install tar
RUN apt-get install -y git
RUN apt-get install -y python3 python3-pip
RUN python -m pip install --upgrade pip
RUN sudo python3 -m pip install joblib
RUN git clone https://github.com/ging/practica_big_data_2019.git

ENV PROJECT_HOME "/home/vagrant/practica_big_data_2019"
RUN sudo sed -i 's%# Configuration details%os.environ["PROJECT_HOME"] = "/home/vagrant/practica_big_data_2019"%g' /home/vagrant/practica_big_data_2019/resources/web/predict_flask.py

EXPOSE 5000

CMD sudo python3 "/practica_big_data_2019/resources/web/predict_flask.py"