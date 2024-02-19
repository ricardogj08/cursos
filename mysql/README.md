# MySQL/MariaDB

Acceder al prompt de comandos de MySQL:

	sudo mysql -u root -p

## Prompt

Mostrar un mensaje de ayuda con todos los comandos disponibles:

	help;
	\h;   -- o
	\?;   -- también

Salir del prompt de MySQL:

	quit;
    exit; -- o
    \q;   -- también

Listar todas las bases de datos que están actualmente en el sistema:

	SHOW DATABASES;

Crear una base de datos:

	CREATE DATABASE dbname;

Mostrar información sobre como se creó una base de datos:

	SHOW CREATE DATABASE dbname;
    SHOW CREATE SCHEMA dbname;   -- también

> `CHARACTER SET` es el conjunto de caracteres que se utiliza para almacenar y mostrar información.
>
>`COLLATIONS` es un conjunto de reglas que se utiliza para comparar caracteres.

Establecer la base de datos a utilizar para ejecutar sentencias SQL:

	USE dbname;

Crear una tabla dentro de la base de datos seleccionada:

	CREATE TABLE tblname (
        id INT AUTO_INCREMENT PRIMARY KEY,
        firstname VARCHAR(64) NOT NULL,
        lastname VARCHAR(64) NOT NULL,
        birthday DATE
    );

Mostrar información sobre como se creó una tabla:

	SHOW CREATE TABLE tblname;

Mostrar información sobre las columnas de una tabla:

	DESCRIBE tblname;

Agregar o modificar una columna de una tabla:

	ALTER TABLE tblname ADD COLUMN address VARCHAR(255);

Eliminar una tabla de la base de datos seleccionada:

	DROP TABLE tblname;

Listar todas las tablas de la base de datos seleccionada:

	SHOW TABLES;

Eliminar una base de datos existente:

	DROP DATABASE dbname;

Ejecutar comandos y sentencias SQL desde la línea de comandos:

	sudo mysql -u root -p -e 'DESCRIBE mysql.user;'

Ejecutar comandos y sentencias SQL desde un archivo externo:

	sudo mysql -u root -p < database.sql

Ejecutar comandos y sentencias SQL desde un archivo externo dentro del prompt de MySQL:

	source database.sql;
	\. database.sql; -- también

Validar la integridad de la información importada:

	sudo mysql -u root -p -t < test_database_md5.sql

Mostrar la ruta del directorio donde se almacenan todas las bases de datos:

	SELECT @@datadir;

## Motores de almacenamiento

### InnoDB

* Compatible con ACID (atomicidad, cosistencia, aislamiento y durabilidad).
* Transacciones (realizar varias operaciones).
* Claves foráneas (integridad referencial).
* Recuperación ante fallos (reproduce transacciones que no se ejecutaron).
* Bloqueo a nivel de fila (múltiples transacciones).
* Es el más recomendado para utilizar (por defecto).

### MyISAM

* Fue el motor de almacenamiento por defecto.
* No transaccional.
* No soporta llaves foráneas.
* No soporta un sistema de recuperación ante fallos.
* Bloqueo a nivel de tabla (solo una operación a la vez).
* Mayor velocidad.

### MEMORY

* Almacenamiento en memoria (temporal).
* No transaccional.
* Es el de mayor velocidad.
* No soporta un sistema de recuperación ante fallos.
* Bloqueo a nivel de tabla.

### CSV

* Almacenamiento en archivos CSV (valores separados por comas).
* No transaccional.
* Integración amigable con otras aplicaciones.
* No soporta un sistema de recuperación ante fallos.
* Bloqueo a nivel de tabla.

### MERGE

* Vincula varias tablas MyISAM para representarlas en una sola.
* No transaccional.
* Útil para grandes volúmenes de datos.
* No soporta un sistema de recuperación ante fallos.
* Bloqueo a nivel de tabla.

### Archive

* `INSERT` de alta velocidad.
* No transaccional.
* Datos comprimidos.
* No soporta un sistema de recuperación ante fallos.
* Útil para información histórica (logs).

### BLACKHOLE

* No almacena información.
* No transaccional.
* No soporta un sistema de recuperación ante fallos.
* Útil para testing.

### FederatedX

* Distribuye una base de datos en varios equipos para representarlo en uno solo.
* Útil en entornos distribuidos.

## Tipos de datos

### Numéricos

* Enteros: se distinguen por el rango de valores que se puede almacenar.
	* TINYINT/INT1
    * SMALLINT/INT2
    * MEDIUMINT/INT3
    * INTEGER/INT/INT4
    * BIGINT/INT8
* Reales: corresponde a los números decimales y pueden ser o no de precisión específica.
	* DECIMAL/DEC/NUMERIC/FIXED/NUMBER
    * FLOAT
    * DOUBLE/DOUBLE PRECISION/REAL
* BIT: almacena un solo bit, 0 o 1.

### Booleanos

* BIT
* BOOLEAN/TINYINT(1)/BOOL

### Alfanuméricos

* Texto libre:
	* CHAR (longitud fija)
    * VARCHAR (longitud variable)
    * TINYTEXT
    * TEXT
    * MEDIUMTEXT/LONG/LONG VARCHAR
    * LONGTEXT
* Texto predefinido:
	* SET (0 o más valores predefinidos)
	* ENUM

### Fecha/hora

* DATE (fecha)
* TIME (hora)
* DATETIME (fecha y hora)
* TIMESTAMP (número de segundos desde el 01/01/1970 00:00)
* YEAR (año)

### Espaciales

Corresponde al manejo de coordenadas o puntos en el espacio:

* POINT
* LINESTRING
* POLYGON
* MULTIPOINT
* MULTILINESTRING
* MULTIPOLYGON
* GEOMETRYCOLLECTION
* GEOMETRY

### Binarios

* BINARY/CHAR BYTE
* VARBINARY
* TINYBLOB
* BLOB
* MEDIUMBLOB
* LONGBLOB

### JSON

* JSON/LONGTEXT

## Usuarios

### Autenticación

La autenticación en MySQL constituye de 3 elementos:

* **Host**: el origen de la conexión del usuario (ip, hostname o dominio).
* **User**: nombre de usuario.
* **Password**: contraseña de acceso.

Todas las cuentas de usuarios se encuentran en la base de datos `mysql` de la tabla `user`:

    USE mysql;
    DESCRIBE user;
    SELECT user, host FROM user;
    SELECT user, host FROM mysql.user; -- simplificado

Crear una cuenta de usuario que solo se pueda conectar al servidor MySQL desde `localhost`, es decir, desde el mismo ordenador donde se ejecuta el servidor:

    CREATE USER 'dbuser'@'localhost' IDENTIFIED BY 'password';

Crear una cuenta de usuario que se pueda conectar al servidor MySQL desde cualquier origen:

    CREATE USER 'dbuser'@'%' IDENTIFIED BY 'password';
    CREATE USER 'dbuser'@'' IDENTIFIED BY 'password';  -- o
    CREATE USER 'dbuser' IDENTIFIED BY 'password';     -- también

> Por defecto los nuevos usuarios que se vayan creando cuentan con privilegios mínimos, es decir, no pueden acceder o modificar otras bases de datos.
>
> Para mayor seguridad el motor de bases de datos se encarga de cifrar la contraseña de la cuenta del usuario.

Acceder al prompt de comando de MySQL con una cuenta de usuario:

    mysql -u dbuser -p

Actualizar o modificar la contraseña de una cuenta de usuario:

    ALTER USER 'dbuser'@'localhost' IDENTIFIED BY 'newpassword';

Eliminar la cuenta de un usuario existente:

    DROP USER 'dbuser'@'localhost';

### Autorización

Existen 3 tipos de privilegios:

* **Administrativos**: permite acciones sobre el servidor MySQL.
* **Base de datos**: permite acceder y modificar bases de datos.
* **Objetos de la base de datos**: son permisos más específicos sobre una base de datos (acceso a tablas, campos o consultas).

Permitir a una cuenta de usuario manipular completamente una base de datos específica:

	GRANT ALL PRIVILEGES ON dbname.* TO 'dbuser'@'localhost';
    GRANT ALL ON dbname.* TO 'dbuser'@'localhost'; -- también

Permitir a una cuenta de usuario manipular completamente todas las bases de datos:

	GRANT ALL PRIVILEGES ON *.* TO 'dbuser'@'localhost';
    GRANT ALL ON *.* TO 'dbuser'@'localhost'; -- también

Permitir a una cuenta de usuario manipular completamente una tabla específica de una base de datos:

	GRANT ALL PRIVILEGES ON dbuser.tblname TO 'dbuser'@'localhost';
    GRANT ALL ON dbuser.tblname TO 'dbuser'@'localhost'; -- también

Permitir a una cuenta de usuario acciones específicas sobre una base de datos:

	GRANT SELECT, INSERT, DELETE ON dbname.* TO 'dbuser'@'localhost';

Eliminar de una cuenta de usuario los privilegios de manipular completamente una base de datos específica:

	GRANT ALL PRIVILEGES ON dbname.* TO 'dbuser'@'localhost';
    GRANT ALL ON dbname.* TO 'dbuser'@'localhost'; -- también

Eliminar de una cuenta de usuario los privilegios de manipular completamente todas las bases de datos:

	REVOKE ALL PRIVILEGES ON *.* FROM 'dbuser'@'localhost';
    REVOKE ALL ON *.* FROM 'dbuser'@'localhost'; -- también

Eliminar de una cuenta de usuario los privilegios de manipular completamente una tabla específica de una base de datos:

	REVOKE ALL PRIVILEGES ON dbuser.tblname FROM 'dbuser'@'localhost';
    REVOKE ALL ON dbuser.tblname FROM 'dbuser'@'localhost'; -- también

Eliminar de una cuenta de usuario una acción específica sobre una base de datos:

	REVOKE INSERT ON dbname.* FROM 'dbuser'@'localhost';

Visualizar todos los privilegios de una cuenta de usuario:

	SHOW GRANTS FOR 'dbuser'@'localhost';

## Referencias

* [freeCodeCamp - MySQL Course for Beginners.](https://youtu.be/uWkcxasFWzQ?si=bOin7Rg932PvYQd7)
* [EDteam - Curso: MySQL](https://ed.team/cursos/mysql)
* [freeCodeCamp - MySQL Database.](https://youtu.be/ER8oKX5myE0?si=YOBYm6na00rVLC-C)
* [MariaDB Server Documentation.](https://mariadb.com/kb/en/documentation)
