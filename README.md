# Proyecto integrado: LMS con Wordpress.
Plataforma de e-learning sobre Wordpress usando Docker.

> IES Celia Viñas (Almería) - Curso 2021/2022.
> Módulo: Proyecto integrado.
> Ciclo: CFGS Administración de Sistemas Informáticos en Red.

**Introducción**
------------
El objetivo de este proyecto es crear una demo funcional de una página de e-learning similar a LMS Cambridge o Udemy empleando los conocimientos adquiridos durante el curso, especialmente la asignatura de Implantación de Aplicaciones Web.

**Fases del desarrollo**
------------

1. Preparar el script de instalación de docker y docker-compose.
2. Diseñar el archivo docker-compose con los servicios necesarios para el proyecto. (Pila LAMP, PhpMyAdmin, Wordpress, Haproxy...) Decidir el algoritmo de balanceo de carga a emplear.
3. Elegir y listar los plugin necesarios para Wordpress. Contemplar algunos de ampliación como una pasarela de pago.
4. Elegir un tema para Wordpress y una paleta de colores. Crear un esquema de las diferentes páginas principales.
5. Crear un logo de la dimensiones adecuadas (Vía Canva o similar) y una descripción para la bio.
6. Crear un curso básico que servirá de 'placeholder' para probar las diferentes funcionalidades de la demo. Depurar los errores antes de pasar a la siguiente fase.
7. Listar los directorios que necesiten copia de seguridad. Evaluar los diferentes métodos de copia de seguridad disponibles y probarlos.
8. Adquirir un dominio gratuito y hacer pruebas de enlace a la IP de AWS, incluyendo los posibles cambios necesarios en la base de datos (Apuntes SED)
9. Pruebas con el certificado HTTPS gratuito 'Let's Encrypt'
10. Subir el curso de A2 de inglés completo y un pequeño taller para simular una web funcional. Opcionalmente, descubrir como generar un título al completarlos.
11. Preparar la defensa del proyecto integrado en el documento correspondiente y depurar el repositorio GitHub para su posterior puesta en público (Una vez aprobado el módulo)


**Documentación del archivo Docker-Compose**
------------


**Archivos en el repositorio**
------------
1. **README.md** Documentación.
2. **Comandos.md** Listado comandos wp-cli.
3. **docker-compose.yml** Archivo de referencia para docker-compose.
4. **.env** Variables de entorno.
5. **install** Ejecutable para instalar docker y docker-compose.

**Referencias**
------------
