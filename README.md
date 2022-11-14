# Balanceador de Carga con Nginx

## Configuracion de la maquina raulmysql

1. Clonar el repositorio de git de la base de datos.

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura1.png)

2. Modificar el fichero database.sql y eliminar las ultimas tres lineas.

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura2.png)

3. Importar la base de datos.

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura3.png)

4. Modificar el fichero de configuracion 50-server.cnf que se encuentra en /etc/mysql/mariadb.conf.d y en el apartado bind-address poner la ip de la maquina mysql. 

![](https://raw.githubusercontent.com/raulqlda/Balanceador-de-Carga-con-Nginx/main/imagenes/captura4.png)


