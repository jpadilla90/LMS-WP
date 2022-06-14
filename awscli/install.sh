#!bin/bash
set -x

###-------------------------------------------------------###
### Script para montar un sitio LMS con Wordpress         ###
###-------------------------------------------------------###

# Desisntalamos los paquetes SQL que trae nuestra AMI por defecto
apt purge -y mssql* msodbc*

# Actualizamos los repositorios
apt update 

# Instalamos Docker y Docker-compose
apt install docker -y
apt install docker-compose -y

# Introducimos a docker dentro del grupo de usuarios
usermod -aG docker $USER
newgrp docker

# Habilitamos Docker
systemctl enable docker 
systemctl start docker

# Clonamos el repositorio
git clone https://github.com/jpadilla90/LMS-WP.git

# Accedemos al proyecto y lo desplegamos
cd LMS-WP
docker-compose up -d
