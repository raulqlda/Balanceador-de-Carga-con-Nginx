# Balanceador de Carga con Nginx

## Configuracion de la maquina mysql

1. Clonar el repositorio de git de la base de datos.

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura1.png)

2. Modificar el fichero database.sql y eliminar las ultimas tres lineas.

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura2.png)

3. Importar la base de datos.

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura3.png)

4. Modificar el fichero de configuracion 50-server.cnf que se encuentra en /etc/mysql/mariadb.conf.d y en el apartado bind-address poner la ip de la maquina mysql. 

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura4.png)

5. Crear un usuario y dar todos los permisos de la base de datos agregada anteriormente.

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura5.png)

## Configuracion de las maquinas nginx

1. Clonar el repositorio de git hub https://github.com/josejuansanchez/iaw-practica-lamp.git. en una carpeta nueva creada en el directorio /var/www. Al crear la carpeta cambiarle el usuario y el grupo por www-data.

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura6.png)

2. Entrar en el directorio src que esta dentro del directorio clonado y mover todo el contenido al directorio creado anteriromente.

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura7.png)

3. Modificar el archivo de configuracion config.php que esta en el directorio creado anteriormente. Cambiar todo por el usuario creado anteriormente en la maquina mysql.

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura8.png)

4. Copiar el archivo de configuracion default que se necuentra en /etc/nginx/sites-available/ y modificarlo.

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura9.png)

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura10.png)

5. Crear el enlace del archivo creado hacia /etc/nginx/sites-enabled/ y borrar el que se crea por defecto.

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura11.png)

6. Comprobar si esta todo bien configurado con el comando sudo nginx -t y hacer un restart del nginx

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura12.png)

Realizar lo mismo en la otra maquina de nginx

## Configuracion de la maquina balanceador

1. Instalamos el gninx

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura13.png)

2. Entrar en el directorio /etc/nginx/sites-enabled y borrar el archivo default.

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura14.png)

3. Crear un fichero en /etc/nginx/conf.d y agregar lo siguiente.

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura15.png)



