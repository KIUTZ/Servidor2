# Servidor del proyecto 3A de Zaida Pastor Gonzalez.

## Base de la web para el proyecto, escrita con php, html y css.

Esta web es mi apuesta para la base de nuestro proyecto de biometría. 
El uso de boostrap hace que sea responsive, a la vez que práctico y útil. 
En su versión inicial, he construido un login simple para poder visualizar las mediciones con el minor y major.

## Como instalar el servidor y hacer funcionar la web

Mi opción ha sido usar xampp, así que comenzaremos con una instalación limpia de este en C:.

1.Clonar el repositorio de este proyecto.
2.Colocar los archivos del repositorio en la siguiente ruta C:\xampp\htdocs
2.Arrancar xampp con permisos de administrador.
3.En el panel de xampp, empezar los servicios de Apache y MYSQL.
4.En MYSQL, pulsar en admin para abrir phpmyadmin.
5.Importar la base de datos SQL incluida en este proyecto. 
6.Comprobar que tanto arduino como android funcionan correctamente y envían datos.
7.Acceder desde cualquier navegador a localhost.
8.Las credenciales para iniciar sesión son usuario: Admin y contraseña: 1234.
9.El ID, minor y major de la última medición aparecerán en la pantalla.

## Bugs conocidos
### Bugs con la base de datos
Si al tener todo funcionando, solo aparece una medida con id 0 en la página web, comprobar que en la base de datos la tabla medicion 
tenga el id autoincremental. Ya que para mostrar la última medida, ordeno de forma descendiente el id. El bug me ocurrió cuando traté de 
probar en un ordenador diferente empezando todo de cero, y todavía no se si se debe a un error en la exportación o importación de la 
base de datos.

## Error "Not found" al pulsar botones
Actualmente en la web solo funciona el login, recibir mediciones y cerrar la sesión. 
Los botones aún no tienen ninguna utilidad ya que no se pedía en este sprint.