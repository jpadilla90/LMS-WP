#!/bin/bash
set -x

###-------------------------------------------------------###
### Script para montar un sitio LMS con Wordpress         ###
###-------------------------------------------------------###

## Variables ##
# IP pública o local (Pruebas)
IP=192.168.0.41

# Activamos la expansión de generar alias para bash, normalmente desactivada [no en uso]
#shopt -s expand_aliases

# Test de funcionamiento de alias
alias testme="echo It Worked"
alias
testme

# Nos dirigimos al directorio de instalación en caso de no estarlo
cd LMS-WP

# Actualizamos 
apt update

# Instalamos docker y docker-compose.
apt install docker docker-compose -y

# Habilitamos docker e iniciamos el servicio.
systemctl enable docker
systemctl start docker

# Levantamos los servicios.
docker-compose up -d
echo "Configurando el sitio Wordpress"

## Asignamos un alias para lanzar comandos al contenedor wp-cli de manera ágil [no en uso]
#alias wp="sudo docker-compose exec wordpress wp"
# Comandos de wp-cli:


## Notas de docker-compose ##

# Usaremos la siguiente línea para detener los servicios docker. El parámetro '-v' elimina los volúmenes creados por docker-compose. Esto es útil para hacer pruebas.
# docker-compose down -v --remove-orphans

#Con '--scale X' en nuestro archivo docker-compose podemos crear un número de instancias del mismo servicio. 