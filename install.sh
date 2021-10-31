#!/bin/bash
set -x

###-------------------------------------------------------###
### Script para montar un sitio LMS con Wordpress         ###
###-------------------------------------------------------###

## Variables ##
# IP pública o local (Pruebas)
IP=192.168.0.41
DB_NAME=wp_db
DB_USER=wp_user
DB_PASSWORD=wp_pass

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

# Asignamos un alias para lanzar comandos al contenedor wp-cli de manera ágil
alias wp="sudo docker-compose exec wordpress wp"

# Descargamos Wordpress
wp core download --path=/var/www/html --locale=es_ES --allow-root

# Creamos nuestro sitio LMS 'Beaver LMS'
wp core install --url=$IP --title="Tu sitio LMS" --admin_user=admin --admin_password=admin_password --admin_email=test@test.com--allow-root

# Configuramos el archivo de configuración de Wordpress.
wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --allow-root


## Notas de docker-compose ##

# Usaremos la siguiente línea para detener los servicios docker. El parámetro '-v' elimina los volúmenes creados por docker-compose. Esto es útil para hacer pruebas.
# docker-compose down -v 

#Con '--scale X' en nuestro archivo docker-compose podemos crear un número de instancias del mismo servicio. 