# EDteam

Curso: Introducción a la terminal (Gratis).

## Notas

* La terminal históricamente es un interfaz física (monitor, teclado y mouse) donde podías ingresar instrucciones a un ordenador para ejecutar una tarea específica.
* El directorio raíz se encuentra en `/`.
* El **prompt** es un identificador que indica donde se pueden ingresar comandos: `USUARIO@NOMBRE_MAQUINA:/$`.
* Las extensiones de archivos en Linux no son obligatorias.
* Los comandos en Linux tienen una opción corta y una versión larga.
* El usuario super administrador permite realizar tareas o acciones que un usuario sin permisos no podría hacer.
* El gestor de paquetes de Ubuntu es `apt` (advanced package tool).
* Con la tecla <kbd>tab</kbd> autocompleta en la terminal.

* Consultar el directorio de trabajo actual:

    pwd

* Listar el contenido de un directorio:

    ls

* Mostrar un mensaje de ayuda de como utilizar un comando:

    ls --help

* Listar con mayor información el contenido de un directorio:

    ls -l

* Descripción de las columnas del comando `ls -l`:
  * 1ra columna: si comienza con `d` es un directorio, `l` es un link (acceso directo) o `-` es un archivo. Después siguen los permisos del archivo, `r` de lectura, `w` de escritura o `x` de ejecución. Los permisos se agrupan en tercias: usuario, grupo de usuarios y otros usuarios que no pertenecen al grupo de usuarios.
  * 2da columna: *NO SE DESCRIBE*.
  * 3ra columna: identifica al dueño del archivo.
  * 4ta columna: identifica el grupo de usuarios que pueden trabajar con ese archivo.
  * 5ta columna: identifica el tamaño del archivo en bytes.
  * 6ta columna: muestra el mes de modificación del archivo.
  * 7ma columna: muestra el día de modificación del archivo.
  * 8va columna: muestra la hora de modificación del archivo.
  * 9na columna: muestra el nombre del archivo, directorio o link.

* Listar con mayor información el contenido de un directorio y los tamaños de los archivos de manera amigable:

    ls -l -h

* Listar con mayor información el contenido de un directorio, los tamaños de los archivos de manera amigable y sin colorear la distinción de los tipos de archivos:

    ls -l -h --color=never

* Listar con mayor información el contenido de un directorio, los tamaños de los archivos de manera amigable y coloreando la distinción de los tipos de archivos:

    ls -l -h --color=auto

* Versión reducida del comando anterior:

    ls -lh --color=auto

* Crear comandos reducidos:

    alias ls='ls -lh --color=auto'

* Listar con mayor información el contenido de un directorio, los tamaños de los archivos de manera amigable, coloreando la distinción de los tipos de archivos y mostrando archivos ocultos:

    ls -lha --color=auto

* Moverse entre los diferentes directorios (change directory):

    cd /etc

* Moverse al directorio de trabajo actual:

    cd .

* Moverse al directorio anterior respecto al directorio de trabajo actual en jerarquía:

    cd ..

* Moverse al directorio anterior respecto al directorio de trabajo actual en jerarquía e ingresar a un directorio al mismo tiempo:

    cd ../apt

* Regresar al directorio anterior después de haber ingresado el comando `cd`:

    cd -

* Moverse al directorio personal del usuario actual:

    cd ~

* Ver el contenido de un archivo:

    cat ~/.bashrc

* Ver el contenido de un archivo mostrando el número de líneas:

    cat -n ~/.bashrc

* Ver el contenido de un archivo mostrando el número de líneas con paginación:

    cat -n /etc/profile | less

> Se utiliza la tecla de <kbd>espacio</kbd> para cambiar de página.  
> Con la tecla <kbd>q</kbd> sale de la paginación.

* Ingresar como usuario super administrador (`root`) de manera temporal (super user do):

    sudo cat /etc/wpa_supplicant.conf

> Para ejecutar el comando `sudo` el usuario debe pertenecer al grupo `sudo` o `wheel`.

* Imprimir un mensaje en la terminal:

    echo 'Hola mundo!'

* Crear un archivo con el comando `echo`:

    echo 'Hola mundo!' > prueba.txt

* Copiar un archivo como super administrador:

    sudo cp prueba.txt /etc

* Adjuntar más contenido a un archivo con el comando `echo`:

    echo 'Hola mundo!' > prueba.txt
    echo 'Estoy contento de aprender los comando en Linux' >> prueba.txt

* Crear un archivo vacío:

    touch archivo.txt

* Crear un directorio (make directory):

    mkdir miproyecto

* Crear un directorio con subdirectorios:

    mkdir -p miproyecto/facturacion/productos

* Copiar un archivo (copy):

    cp ORIGEN DESTINO

* Copiar un archivo desde una ruta absoluta:

    cp papas.txt /home/usuario/miproyecto/facturacion/productos

* Copiar un archivo desde una ruta relativa:

    cp arroz.txt ../../../miproyecto/facturacion/productos

* Copiar un archivo con otro nombre solo con rutas absolutas:

    cp /home/usuario/miproyecto2/facturacion/productos/carne.txt /home/usuario/miproyecto/facturacion/productos/nuevacarne.txt

* Copiar un directorio de manera recursiva:

    cp -R miproyecto miproyecto2

* Borrar archivos:

    rm ARCHIVO

* Borrar un archivo con confirmación:

    rm -i ARCHIVO

* Borrar un directorio vacío:

    rm -d DIRECTORIO

* Borrar un directorio:

    rm -r DIRECTORIO

* Renombrar un archivo o directorio (move):

    mv ARCHIVO NUEVO_ARCHIVO

* Mover un archivo o directorio a otra ruta:

    mv RUTA NUEVA_RUTA

* Buscar archivos o directorios con un cierto nombre:

    find RUTA -name 'NOMBRE_ARCHIVO'

* Buscar archivos con una cierta extensión:

    find RUTA -name '*.EXTENSION'

* Buscar archivos o directorios con un cierto nombre sin ser sensible a mayúsculas y minúsculas:

    find RUTA -iname 'NOMBRE_ARCHIVO'

* Buscar solo directorios con un cierto nombre:

    find RUTA -type d -iname 'NOMBRE_DIR'

## Referencias

* [EDteam - Curso: Introducción a la terminal (Gratis).](https://ed.team/cursos/terminal-linux)
