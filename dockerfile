FROM wordpress:cli-php8.0
## Añadimos el script de espera a nuestra imagen Wordpress
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.9.0/wait /wait
RUN chmod +x /wait
## Lanzamos el script de espera. Los parámetros aparecen en nuestro .yml como WAIT-HOSTS
CMD /wait

FROM wordpress:5.8.1
## Añadimos el script de espera a nuestra imagen Wordpress
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.9.0/wait /wait
RUN chmod +x /wait
## Lanzamos el script de espera. Los parámetros aparecen en nuestro .yml
CMD /wait


