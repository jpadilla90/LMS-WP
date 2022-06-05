#!/bin/sh

# Instalación core.
wp core install --url=192.168.0.13 --title="Tu LMS autodesplegado" --admin_user=admin --admin_password=admin --admin_email=foo@bar.com --allow-root
# Tema
wp theme install twentysixteen --activate
# Plugins


#wp theme install learnpress.4.0.0 --activate"