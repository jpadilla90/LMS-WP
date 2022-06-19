# Comandos útiles de WP-CLI
Una lista de los comandos necesarios para operar la Command Line Interface.


## PLUGIN 

Listar plugin instalados
`wp plugin list`

Actualizar todos los plugin (Seguridad)
`wp plugin update --all --path=/var/www/html/ --allow-root`

Instalar un plugin específico
`wp plugin install --path=/var/www/html/ [plugin] --activate --allow-root`

Desactivar un plugin
`wp plugin deactivate [plugin]`

Eliminar un plugin
`wp plugin delete [plugin]`

## TEMAS (Repetimos list/update/install/deactivate/delete)

Listar temas
`wp theme list`

Actualizar todos los temas
`wp theme update --all --path=/var/www/html/ --allow-root`

Instalar un tema específico
`wp theme install --path=/var/www/html/ [tema] --activate --allow-root`

Actualizar todos los temas
`wp theme update --all --path=/var/www/html/ --allow-root`

## WP-SCAN

Actualizar WP-SCAN
`wpscan --update`

Enumerar usuarios vía wp-scan.
`wpscan --url [URL] --enumerate u`