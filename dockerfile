# Usamos una de las imagenes recomendadas con una shell: alpine, debian...
# https://github.com/ufoscout/docker-compose-wait

## Elegimos alpine al tener consola y ser ligera.
FROM alpine

## Añadimos el script de espera a nuestra imagen de docker. Damos permisos de ejecución.
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.9.0/wait /wait
RUN chmod +x /wait

## Añadimos la aplicación a la imagen de docker
ADD wordpress.sh /wordpress.sh

## Lanzamos el script de espera. Los parámetros aparecen en nuestro .yml como WAIT-HOSTS
CMD /wait && echo "Esperando a MySQL" && /wordpress.sh


