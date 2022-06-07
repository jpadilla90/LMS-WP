#!bin/bash

## Lanza los scripts necesarios para generar las instancias y crear una ip elástica.
set -x

# Bloque primer lanzamiento.
00-terminate_all_instances.sh
01-delete_all_security_groups.sh
02-delete_all_elastic_ips.sh
03-create_security_groups.sh


# Bloque posteriores lanzamientos.
04-create_instances.sh
05-create_elastic_ip.sh