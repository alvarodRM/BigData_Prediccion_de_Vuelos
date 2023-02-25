#!/bin/bash

cat << "EOF"
 ___       _      _         ___           _        _            _             
|_ _|_ __ (_) ___(_) ___   |_ _|_ __  ___| |_ __ _| | __ _  ___(_) ___  _ __  
 | || '_ \| |/ __| |/ _ \   | || '_ \/ __| __/ _` | |/ _` |/ __| |/ _ \| '_ \ 
 | || | | | | (__| | (_) |  | || | | \__ \ || (_| | | (_| | (__| | (_) | | | |
|___|_| |_|_|\___|_|\___/  |___|_| |_|___/\__\__,_|_|\__,_|\___|_|\___/|_| |_|
----------------------------------------------------------------------------------------
    _         _                        
   / \  _   _| |_ ___  _ __ ___  ___ _ 
  / _ \| | | | __/ _ \| '__/ _ \/ __(_)
 / ___ \ |_| | || (_) | | |  __/\__ \_ 
/_/   \_\__,_|\__\___/|_|  \___||___(_)   

 _          _                  _    _                      
| |   _   _(_)___   _   _     / \  | |_   ____ _ _ __ ___  
| |  | | | | / __| | | | |   / _ \ | \ \ / / _` | '__/ _ \ 
| |__| |_| | \__ \ | |_| |  / ___ \| |\ V / (_| | | | (_) |
|_____\__,_|_|___/  \__, | /_/   \_\_| \_/ \__,_|_|  \___/ 
                    |___/                                  
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
EOF


cat << "EOF"
 ___           _        _                                     _ _   
|_ _|_ __  ___| |_ __ _| | __ _ _ __ ___   ___  ___ _    __ _(_) |_ 
 | || '_ \/ __| __/ _` | |/ _` | '_ ` _ \ / _ \/ __(_)  / _` | | __|
 | || | | \__ \ || (_| | | (_| | | | | | | (_) \__ \_  | (_| | | |_ 
|___|_| |_|___/\__\__,_|_|\__,_|_| |_| |_|\___/|___(_)  \__, |_|\__|
                                                        |___/           
EOF
cd /home/vagrant
sudo apt-get install -y git
git clone https://github.com/ging/practica_big_data_2019.git


cat << "EOF"
Creamos carpeta para guardar todas las herramientas
EOF
mkdir herramientasFBID


cat << "EOF"
Descargamos la estructura de datos
EOF
cd /home/vagrant/practica_big_data_2019
resources/download_data.sh
cd /home/vagrant


cat << "EOF"
 ___           _        _                             
|_ _|_ __  ___| |_ __ _| | __ _ _ __ ___   ___  ___ _ 
 | || '_ \/ __| __/ _` | |/ _` | '_ ` _ \ / _ \/ __(_)
 | || | | \__ \ || (_| | | (_| | | | | | | (_) \__ \_ 
|___|_| |_|___/\__\__,_|_|\__,_|_| |_| |_|\___/|___(_)
                                                      
             _   _                                 _       
 _ __  _   _| |_| |__   ___  _ __    _   _   _ __ (_)_ __  
| '_ \| | | | __| '_ \ / _ \| '_ \  | | | | | '_ \| | '_ \ 
| |_) | |_| | |_| | | | (_) | | | | | |_| | | |_) | | |_) |
| .__/ \__, |\__|_| |_|\___/|_| |_|  \__, | | .__/|_| .__/ 
|_|    |___/                         |___/  |_|     |_|    
EOF
cd /home/vagrant/herramientasFBID
apt-get install -y python3 python3-pip
python -m pip install --upgrade pip


cat << "EOF"
 ___           _        _                                     _     _   
|_ _|_ __  ___| |_ __ _| | __ _ _ __ ___   ___  ___   _   ___| |__ | |_ 
 | || '_ \/ __| __/ _` | |/ _` | '_ ` _ \ / _ \/ __| (_) / __| '_ \| __|
 | || | | \__ \ || (_| | | (_| | | | | | | (_) \__ \  _  \__ \ |_) | |_ 
|___|_| |_|___/\__\__,_|_|\__,_|_| |_| |_|\___/|___/ (_) |___/_.__/ \__|
EOF
cd /home/vagrant/herramientasFBID
sudo apt-get install apt-transport-https curl gnupg -yqq
echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | sudo tee /etc/apt/sources.list.d/sbt.list
echo "deb https://repo.scala-sbt.org/scalasbt/debian /" | sudo tee /etc/apt/sources.list.d/sbt_old.list
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo -H gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/scalasbt-release.gpg --import
sudo chmod 644 /etc/apt/trusted.gpg.d/scalasbt-release.gpg
sudo apt-get update
sudo apt-get install -y sbt


cat << "EOF"
 ___           _        _                             
|_ _|_ __  ___| |_ __ _| | __ _ _ __ ___   ___  ___ _ 
 | || '_ \/ __| __/ _` | |/ _` | '_ ` _ \ / _ \/ __(_)
 | || | | \__ \ || (_| | | (_| | | | | | | (_) \__ \_ 
|___|_| |_|___/\__\__,_|_|\__,_|_| |_| |_|\___/|___(_)
                                                      
 __  __                             _ _     
|  \/  | ___  _ __   __ _  ___   __| | |__  
| |\/| |/ _ \| '_ \ / _` |/ _ \ / _` | '_ \ 
| |  | | (_) | | | | (_| | (_) | (_| | |_) |
|_|  |_|\___/|_| |_|\__, |\___/ \__,_|_.__/ 
                    |___/                   
EOF
cd /home/vagrant/herramientasFBID
sudo apt-get install gnupg
sudo wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/4.2 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org


cat << "EOF"
 ___           _        _                             
|_ _|_ __  ___| |_ __ _| | __ _ _ __ ___   ___  ___ _ 
 | || '_ \/ __| __/ _` | |/ _` | '_ ` _ \ / _ \/ __(_)
 | || | | \__ \ || (_| | | (_| | | | | | | (_) \__ \_ 
|___|_| |_|___/\__\__,_|_|\__,_|_| |_| |_|\___/|___(_)
                                                      
    _                     _            ____                   _    
   / \   _ __   __ _  ___| |__   ___  / ___| _ __   __ _ _ __| | __
  / _ \ | '_ \ / _` |/ __| '_ \ / _ \ \___ \| '_ \ / _` | '__| |/ /
 / ___ \| |_) | (_| | (__| | | |  __/  ___) | |_) | (_| | |  |   < 
/_/   \_\ .__/ \__,_|\___|_| |_|\___| |____/| .__/ \__,_|_|  |_|\_\
        |_|                                 |_|                    
EOF
cd /home/vagrant/herramientasFBID
sudo wget https://archive.apache.org/dist/spark/spark-3.1.2/spark-3.1.2-bin-hadoop2.7.tgz
sudo apt-get install zip gzip tar
sudo tar xzvf spark-3.1.2-bin-hadoop2.7.tgz
sudo rm spark-3.1.2-bin-hadoop2.7.tgz


cat << "EOF"
 ___           _        _                             
|_ _|_ __  ___| |_ __ _| | __ _ _ __ ___   ___  ___ _ 
 | || '_ \/ __| __/ _` | |/ _` | '_ ` _ \ / _ \/ __(_)
 | || | | \__ \ || (_| | | (_| | | | | | | (_) \__ \_ 
|___|_| |_|___/\__\__,_|_|\__,_|_| |_| |_|\___/|___(_)
                                                      
 ____            _       
/ ___|  ___ __ _| | __ _ 
\___ \ / __/ _` | |/ _` |
 ___) | (_| (_| | | (_| |
|____/ \___\__,_|_|\__,_|
EOF
cd /home/vagrant/herramientasFBID
sudo wget https://github.com/scala/scala/archive/v2.12.0.tar.gz
sudo tar xzvf v2.12.0.tar.gz
sudo rm v2.12.0.tar.gz
# curl -fL https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz | gzip -d > cs && chmod +x cs && ./cs setup


cat << "EOF"
 ___           _        _                             
|_ _|_ __  ___| |_ __ _| | __ _ _ __ ___   ___  ___ _ 
 | || '_ \/ __| __/ _` | |/ _` | '_ ` _ \ / _ \/ __(_)
 | || | | \__ \ || (_| | | (_| | | | | | | (_) \__ \_ 
|___|_| |_|___/\__\__,_|_|\__,_|_| |_| |_|\___/|___(_)
                                                      
 _____           _                             
|__  /___   ___ | | _____  ___ _ __   ___ _ __ 
  / // _ \ / _ \| |/ / _ \/ _ \ '_ \ / _ \ '__|
 / /| (_) | (_) |   <  __/  __/ |_) |  __/ |   
/____\___/ \___/|_|\_\___|\___| .__/ \___|_|   
                              |_|            
EOF
cd /home/vagrant/herramientasFBID
sudo wget https://dlcdn.apache.org/zookeeper/zookeeper-3.8.0/apache-zookeeper-3.8.0-bin.tar.gz
tar xzvf apache-zookeeper-3.8.0-bin.tar.gz
sudo rm apache-zookeeper-3.8.0-bin.tar.gz


cat << "EOF"
 ___           _        _                             
|_ _|_ __  ___| |_ __ _| | __ _ _ __ ___   ___  ___ _ 
 | || '_ \/ __| __/ _` | |/ _` | '_ ` _ \ / _ \/ __(_)
 | || | | \__ \ || (_| | | (_| | | | | | | (_) \__ \_ 
|___|_| |_|___/\__\__,_|_|\__,_|_| |_| |_|\___/|___(_)
                                                      
 _  __      __ _         
| |/ /__ _ / _| | ____ _ 
| ' // _` | |_| |/ / _` |
| . \ (_| |  _|   < (_| |
|_|\_\__,_|_| |_|\_\__,_|
EOF
cd /home/vagrant/herramientasFBID
sudo wget https://archive.apache.org/dist/kafka/3.0.0/kafka_2.12-3.0.0.tgz
tar xzvf kafka_2.12-3.0.0.tgz
sudo rm kafka_2.12-3.0.0.tgz


cat << "EOF"
Instalamos Bibliotecas de python    
EOF
cd /home/vagrant/practica_big_data_2019
pip install -r requirements.txt


cat << "EOF"
Eliminamos ficheros no necesarios
EOF
cd /home/vagrant
sudo rm script.sh


cat << "EOF"
Añadimos línea en fichero prediction_flask.py
EOF
sudo sed -i 's%# Configuration details%os.environ["PROJECT_HOME"] = "/home/vagrant/practica_big_data_2019"%g' /home/vagrant/practica_big_data_2019/resources/web/predict_flask.py
# sudo sed -i 's/import joblib/# import joblib/g' /home/vagrant/practica_big_data_2019/resources/web/predict_flask.py


# cat << "EOF"
# Colocamos la plantilla setup.py con las configuraciones de los dags para entrenar el modelo con Apache Airflow
# EOF
# sudo cp /home/vagrant/practica_big_data_2019/resources/airflow/setup.py /home/vagrant/practica_big_data_2019/resources/airflow/setup1.py
# sudo rm /home/vagrant/practica_big_data_2019/resources/airflow/setup.py
# sudo cp /home/vagrant/Instalacion/Templates/setup.py /home/vagrant/practica_big_data_2019/resources/airflow/setup.py

cat << "EOF"
 _____ _         ___           _        _            _             
|  ___(_)_ __   |_ _|_ __  ___| |_ __ _| | __ _  ___(_) ___  _ __  
| |_  | | '_ \   | || '_ \/ __| __/ _` | |/ _` |/ __| |/ _ \| '_ \ 
|  _| | | | | |  | || | | \__ \ || (_| | | (_| | (__| | (_) | | | |
|_|   |_|_| |_| |___|_| |_|___/\__\__,_|_|\__,_|\___|_|\___/|_| |_|  
EOF

