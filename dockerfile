FROM wordpress:cli-php8.0

## Añadimos el script de espera a nuestra imagen Wordpress
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.9.0/wait /wait
RUN chmod +x /wait
## Lanzamos el script de espera. Los parámetros aparecen en nuestro .yml
CMD /wait
# --Vamos a probar primero con el otro script--
# Copiamos el script desde la carpeta actual al contenedor.
# COPY wait-for.sh /wait-for.sh
# Facilitamos la localización de fallos durante la fase de pruebas.
# RUN echo 'Probando wait-for-it. Ojo al log.'
# Damos al script permisos de ejecución.
# RUN chmod +x /wait-for.sh
# CMD ["/var/www/html/wait-for-it.sh" , "mysql:3306" , "--strict" , "--timeout=300" , "--" , "/usr/local/bin/docker-entrypoint.sh", "apache2-foreground"]
