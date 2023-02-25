En este fichero se detallan los pasos a seguir para poder desplegar el proyecto mediante docker y configurar el entorno con todos los paquetes, librerías y herramientas requeridas.

En primer lugar, se debe realizar el paso 1 para realizar la instalación de Docker y poder levantar los contenedores necesarios para la ejecución de la práctica.

PASO 1:

   > sudo python3 1_instalar_docker.py

   Este comando solicitará confirmación para instalar docker, debe seleccionar "yes".


En segundo lugar, se debe arrancar cada uno de los contenedores utilizando los siguientes comandos:

> sudo docker build -t [nombre del servicio] .

> sudo docker run --name [nombre del servicio] --rm -i -t ubuntu bash