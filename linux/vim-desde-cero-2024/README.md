# EDteam

Curso: VIM desde cero (Gratis).

## Notas

* Modos:
  * `v`: modo de visualización.
  * `i`: modo de edición o insertar.
  * `esc`: volver al modo normal.
* `:q`: salir del editor.
* `h`: desplazar un caracter a la izquierda.
* `j`: desplazar una línea hacia abajo.
* `k`: desplazar una línea hacia arriba.
* `l`: desplazar un caracter a la derecha.
* `:q!`: salir del editor sin guardar ningún cambio.
* `:w`: guardar los cambios de un archivo.
* `:wq`: guardar los cambios de un archivo y salir del editor.
* `:edit ARCHIVO`: abrir un archivo desde el editor.
* `w`: posicionar el cursor en la primera letra de cada palabra.
* `e`: posicionar el cursor al final de la letra de cada palabra.
* `b`: posicionar el cursor en la primera letra de cada palabra anterior.
* `NUMERO` + `h`, `j`, `k` o `l`: desplazar `n` veces  el cursor.
* `f` + `LETRA`: posicionar el cursor sobre una letra de búsqueda únicamente en la línea que se encuentra.
* `0`: posicionar el cursor al principio de la línea.
* `$`: posicionar el cursor al final de la línea.
* `*`: posicionar el cursor sobre cada coincidencia de la palabra en la que se encuentra el cursor.
* `%`: posicionar el cursor al principio o final de un bloque.
* `g` + `g`: posicionar el curso al principio del contenido de un archivo.
* `G`: posicionar el cursor al final del contenido de un archivo.
* `NUMERO` + `G`: posicionar el cursor sobre una línea en específico.
* `o`: insertar una línea hacia abajo y entrar en modo edición.
* `O`: insertar una línea hacia arriba y entrar en modo edición.
* `x`: borrar un caracter en la posición del cursor.
* `X`: borrar un caracter a la izquierda.
* `r` + `LETRA`: reemplazar un caracter en la posición del cursor.
* `d` + `w`: borrar una palabra en la posición del cursor.
* `d` + `d`: borrar toda una línea y copiarlo en el portapapeles.
* `p`: pegar un texto desde el portapapeles.
* `y` + `y`: copiar toda una línea.
* `NUMERO` + `y` + `y`: copiar `n` número de líneas.
* `NUMERO` + `d` + `d`: borrar `n` número de líneas y copiarlo en el portapapeles.
* `.`: repetir el último comando.
* `v`, `h`, `j`, `k`, o `l`: seleccionar con el cursor.
* `v`, `e`: seleccionar una palabra en la posición del cursor.
* `v`, `w`: seleccionar hasta el principio de la otra palabra en la posición del cursor.
* `/`: buscar desde un patrón de búsqueda (soporta expresiones regulares).

> Con `n` busca la siguiente coincidencia.  
> Con `n` regresa a la coincidencia anterior.

* `:%s/PATRON/SUSTITUCION`: sustituir todas las coincidencias de un patrón de búsqueda únicamente en la línea donde se encuentra el cursor (soporta expresiones regulares).
* `:%s/PATRON/SUSTITUCION/g`: sustituir todas las coincidencias de un patrón de búsqueda (soporta expresiones regulares).
* `u`: deshacer el último cambio.

## Referencias

* [EDteam - Curso: VIM desde cero (Gratis).](https://ed.team/cursos/vim)
* [Vim - Sitio web.](https://www.vim.org)
* [victorhck - Recopilación de comandos de Vim.](https://victorhck.gitlab.io/comandos_vim/)
* [VIM Adventures - Learn VIM while playing a game.](https://vim-adventures.com)
