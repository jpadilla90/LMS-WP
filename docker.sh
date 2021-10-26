#!/bin/bash
set -x

## El script debe utilizarse desde la ubicación del archivo 'docker-compose.yml' ##
# Actualizamos 
apt update

# Instalamos docker y docker-compose.
apt install docker docker-compose -y

# Habilitamos docker e iniciamos el servicio.
systemctl enable docker
systemctl start docker

# Levantamos los servicios. 
docker-compose up -d 

## Notas de docker-compose ##

# Usaremos la siguiente línea para detener los servicios docker. El parámetro '-v' elimina los volúmenes creados por docker-compose. Esto es útil para hacer pruebas.
# docker-compose down -v 

#Con '--scale X' en nuestro archivo docker-compose podemos crear un número de instancias del mismo servicio. 