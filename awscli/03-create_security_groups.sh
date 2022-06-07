#!/bin/bash
set -x

# Deshabilitamos la paginación de la salida de los comandos de AWS CLI
# Referencia: https://docs.aws.amazon.com/es_es/cli/latest/userguide/cliv2-migration.html#cliv2-migration-output-pager
export AWS_PAGER=""

# Creamos el grupo de seguridad: lms-sg
aws ec2 create-security-group \
    --group-name lms-sg \
    --description "Reglas para el proyecto lms"

# Creamos una regla de accesso SSH
aws ec2 authorize-security-group-ingress \
    --group-name lms-sg \
    --protocol tcp \
    --port 22 \
    --cidr 0.0.0.0/0

# Creamos una regla de accesso HTTP
aws ec2 authorize-security-group-ingress \
    --group-name lms-sg \
    --protocol tcp \
    --port 80 \
    --cidr 0.0.0.0/0

# Creamos una regla de accesso HTTPS
aws ec2 authorize-security-group-ingress \
    --group-name lms-sg \
    --protocol tcp \
    --port 443 \
    --cidr 0.0.0.0/0

# Creamos una regla de accesso para PHPMyadmin
aws ec2 authorize-security-group-ingress \
    --group-name lms-sg\
    --protocol tcp \
    --port 8080 \
    --cidr 0.0.0.0/0

#---------------------------------------------------------------------
## Comentamos esta parte al no necesitarla de momomento.

# # Creamos el grupo de seguridad: backend-sg
# aws ec2 create-security-group \
#     --group-name backend-sg \
#     --description "Reglas para el backend"

# # Creamos una regla de accesso SSH
# aws ec2 authorize-security-group-ingress \
#     --group-name backend-sg \
#     --protocol tcp \
#     --port 22 \
#     --cidr 0.0.0.0/0

# # Creamos una regla de accesso para MySQL
# aws ec2 authorize-security-group-ingress \
#     --group-name backend-sg \
#     --protocol tcp \
#     --port 3306 \
#     --cidr 0.0.0.0/0
