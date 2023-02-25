# Big Data: Predicción de retraso de vuelos

AUTORES: 
  * ÁLVARO DE ROJAS MARAVER
  * LUIS ALBERTO LÓPEZ ÁLVAREZ


Existen 2 ficheros README.md incluidos en los directorios del proyecto:
* El primero de ellos para el despleigue de la aplicación utilizando scripts de python, sin contenedores docker.
* El segundo para desplegar la aplicación utilizando contenedores docker.


## TRABAJO REALIZADO

1. Lograr el funcionamiento de la práctica sin realizar modificaciones

## MEJORAS REALIZADAS

1. Entrenar el modelo con Apache Airflow y descripción de su arquitectura.
2. Ejecución del job de predicción con Spark Submit en vez de IntelliJ
3. Automatización del despliegue del proyecto utilizando tecnologías vistas en clase como Vagrant que es empleado como IaaC proporcionando la imagen del sistema operativo y el aprovisionamiento base de la máquina virtual sobre la que se han desplegado todos los servicios descritos utilizando scripts de python.

## MEJORAS INTENTADAS

1. Dockerizar cada uno de los servicios que componen la arquitectura completa. (mejora no operativa)
2. Desplegar el escenario completo usando docker-compose. (mejora no operativa)
