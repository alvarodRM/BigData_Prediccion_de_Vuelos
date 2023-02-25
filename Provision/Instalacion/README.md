En este fichero se detallan los pasos a seguir para poder desplegar el proyecto y configurar el entorno con todos los paquetes, librerías y herramientas requeridas.

En primer lugar vamos a detallar las herramientas necesarias para poder instalar este proyecto de git:
1. VirtualBox.
2. Vagrant.

Una vez hemos descargado el proyecto, ejecutaremos los siguientes comandos para desplegar nuestra máquina virtual KaliLinux la cual está configurada para tener todas las herramientas y paquetes necesarios para ejecutar el escenario.

   > cd rutaUsuario/nombreProyecto
   > vagrant up fbid

Este último comando despliega la máquina que se ha definido en el Vagrantfile, ejecuta el aprovisionamiento script.sh e inyecta en la máquina virtual todos los scripts que cuelgan de la carpeta "/Instalacion".

   > vagrant ssh fbid
   > cd Instalacion

A continuación se detallará el orden adecuado y correcto para ejecutar los scripts que nos permitirán finalizar el despliegue y ejecutar todos los servicios necesarios (Kafka, Zookeeper, MongoDB, sbt, PySpark, ApacheAirflow...).

Para la realización de los siguientes pasos, es necesario abrir 7 terminales.

PASO 1:

   > sudo python3 1_iniciar_zookeeper.py

   Este comando no finaliza nunca (en él corre zookeeper), se debe dejar ejecutándose en un terminal independiente (1).

PASO 2:

   > sudo python3 2_iniciar_kafka.py

    Este comando no finaliza nunca, se debe dejar ejecutándose en un terminal independiente (2).

PASO 3:

   > sudo python3 3_importar_registros_distancia_MongoDB.py

    Este comando solicitará confirmación para instalar gnupg, debe seleccionar "yes". Debe esperarse a la finalización del script para pasar al paso 4.

PASO 4:

   > sudo python3 4_entrenar_modelo_PySpark.py

   Debe esperarse a la finalización del script para pasar al paso 5.

PASO 5:

   > sudo python3 5_compilar_sbt.py

    Este comando no finaliza nunca, se debe dejar ejecutándose en un terminal independiente (3).

        a) Cuando se abra el interprete de sbt, escribir "compile".
        b) Tras compilarse, escribir "run" en el interprete de sbt, el comando nunca finalizará, por lo que se deja ejecutando en un terminal independiente.

PASO 6:

   > sudo python3 6_ejecutar_predictor_vuelo_SparkSubmit.py

    Este comando no finaliza nunca, se debe dejar ejecutándose en un terminal independiente (4).

PASO 7:

   > sudo python3 7_ejecutar_prediccion_webApp.py

    Este comando no finaliza nunca, se debe dejar ejecutándose en un terminal independiente (5).

    Ahora podrá visitar http://localhost:5000 en su máquina virtual y visualizar la App de predicción de vuelos en la página "http://localhost:8084/flights/delays/predict_kafka" al existir una configuración NAT en la máquina virtual para redirigir el puerto 5000 del sistema invitado al 8084 de la máquina anfitriona, pudiendo visualizar la aplicación igualmente.

PASO 8:

   > sudo python3 8_entrenar_modelo_ApacheAirflow.py

   Este comando no finaliza nunca, se debe dejar ejecutándose en un terminal independiente (6).

   Se deben introducir las contraseñas para los dos usuarios disponibles para usar el servicio.

PASO 9:

   > sudo python3 9_airflow_scheduler.py

   Este comando no finaliza nunca, se debe dejar ejecutándose en un terminal independiente (7).

   Ahora podrá visitar http://localhost:8080 en su máquina virtual y visualizar la App de predicción de vuelos en la página "http://localhost:8085/home" al existir una configuración NAT en la máquina virtual para redirigir el puerto 8080 del sistema invitado al 8085 de la máquina anfitriona, pudiendo visualizar la aplicación igualmente.

