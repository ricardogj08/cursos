# EDteam

Curso: CSS desde cero (2024).

## Introducción

* CSS: hojas de estilo en cascada (cascade style sheets).
* Es diseñar con código.
* La web nació en 1991 con HTML.
* CSS nació en 1996 con Internet Explorer 3.
* Recomendaciones de CSS:
  * 1er nivel 1996 (monolito): <https://www.w3.org/TR/REC-CSS1-961217>
  * 2do nivel 1998 (monolito): <https://www.w3.org/TR/CSS2>
  * 3er nivel 2011 (módulos): <https://www.w3.org/TR/css-2023/#css-levels>
  * 4to nivel o superiores no existe.
* Etapas de los módulos de CSS:
    * Borrador.
    * Borrador de la recomendación.
    * Recomendación.
    * Implementación.

## Sintaxis de CSS

![Sintaxis de CSS](https://edteam-media.s3.amazonaws.com/community/original/2b459054-9ca1-4731-9786-2e92d810c824.jpg)

## Variables CSS

* Valores reutilizables dentro de CSS.

```
/* Nivel superior dentro del DOM. */
:root {
    --color: green;
}

body {
    background: var(--color);
}
```

## Selectores

* Seleccionan a uno o varios elementos HTML a los cuales se les aplicaran los estilos.
* Tipos:
  * Simples (una palabra).
  * Compuestos (más de una palabra).
  * Operadores (+, >, *).
  * Atributos.
  * Pseudoclases y pseudoelementos.
* Se recomienda utilizar selectores en minúsculas.

### Selectores simples por etiqueta

* Se aplican los estilos utilizando las etiquetas HTML.
* No puedes seleccionar elementos específicos.
* Son mala práctica.
* Se utilizan para resetear o normalizar los estilos del navegador.

### Selectores simples por clases

* Se utiliza el atributo `class` para aplicar estilos a los elementos HTML.
* Es el tipo de selector más utilizado y recomendado.
* Se pueden aplicar más de una clase de estilos a los elementos HTML.

### Selectores simples por ID

* Se utiliza el atributo `id` para aplicar estilos a los elementos HTML.
* Son mala práctica.
* Solo se pueden utilizar una sola vez.
* Es el de mayor especificidad.

### Selectores compuestos agrupados

* Combinan varios selectores separados por comas.
* No se limita a un tipo específico de selector.
* No se debe abusar de los selectores agrupados.

### Selectores compuestos combinados

* Aplica los estilos a los elementos que cumplan con las condiciones de los selectores.
* La condición de los selectores están concatenados con un punto.

### Selectores compuestos descendientes

* Se aplican los estilos a los elementos más profundos de la herencia o jerarquía.
* Los selectores están separados por espacios.

### Selectores de atributos

* Aplica los estilos utilizando los atributos de los elementos HTML.
* Comodines:
  * Comienza con: `^`
  * Termina con: `$`
  * Contiene: `*`
  * Negación: `:not`

### Selectores con operadores

* Selector universal (`*`):
  * Aplica los estilos a todos los elementos HTML.
  * Es útil en selectores compuestos descendientes.
  * No es recomendable de utilizar.
* Hijo directo (`>`):
  * Aplica los estilos a los hijos directos de un elemento padre.
* Hermano directo (`+`):
  * Aplica los estilos al elemento siguiente del selector.
* Hermanos siguientes (`~`):
  * Aplica los estilos a todos los elementos siguientes del selector.
  * No importa si existen otros elementos bloqueantes.

## Pilares de CSS

* Cascada
* Especificidad
* Herencia

### Especificidad

* Es ser más descriptivo en los elementos que deseamos aplicar los estilos.
* Cálculo de especificidad:
  * Etiquetas y pseudoelementos: 1
  * Atributos y pseudoclases: 10
  * ID: 100
  * Estilos en línea: 1000
* La especificidad debe ser creciente o lineal.

### Cascada

* Los estilos que vienen después sobrescriben a los anteriores.
* `!important`: coloca una declaración en una jerarquía superior en cascada (es una mala práctica).

> Consultar los estilos computados en el navegador ayuda a visualizar los estilos finales aplicados.

### Herencia

* Hereda los estilos de los elementos padre a los hijos.
* `inherit`: fuerza la herencia del elemento padre.
* `initial`: cancela la herencia del elemento padre.

## Layers CSS

* Son agrupaciones de estilos.
* Permite organizar la cascada de los estilos de manera separada.

## Box model

* Los elementos HTML se manejan como cajas o rectángulos.
* Layout model: es el manejo del posicionamiento de los elementos HTML.
  * Tamaño.
  * Posicionamiento.
  * Separación con otros elementos.
* Manejos de layout:
  * Box model
  * Position
  * Flexbox
  * Grid
* Tipos de layout:
  * De bloque: ocupan todo el espacio de pantalla en la línea que se encuentran (sí tienen tamaño).
  * De línea: se comportan como texto (toman el tamaño del contenido).

### Display

* Es una propiedad que permite establecer el tipo de layout de un elemento HTML.
* Valores:
  * `inline`: de línea.
  * `block`: de bloque.
  * `inline-block`: de línea y bloque (tienen tamaño).
  * `flex`
  * `grid`
  * `none`: no muestra el elemento.

### Margin

* Define la distancia o separación entre el elemento y los elementos externos.
* Propiedades ordenadas en sentido de las manecillas del reloj:
  * `margin-top`
  * `margin-right`
  * `margin-bottom`
  * `margin-left`
  * `margin: top right bottom left`: es un shorthand.
* Toma su opuesto Si no existe el valor en las demás posiciones.
* No forma parte de la caja.

### Padding

* Similar al margin pero hacía dentro del elemento.
* Forma parte de la caja.

### Box sizing

* Establece que el elemento tome el tamaño de la caja.

### Propiedades lógicas

* Sirven para contenido oriental RTL que se adapta al texto:
  * `margin-block-start`
  * `margin-block-end`
  * `margin-inline-start`
  * `margin-inline-end`
  * `padding-block-start`
  * `padding-block-end`
  * `padding-inline-start`
  * `padding-inline-end`

## Bordes

* El borde es parte del modelo de caja.
* `border: width style color`: es un shorthand.
* `border-width`: es un shorthand.
* `border-style`:
  * solid
  * dashed
  * dotted
  * double
* `border-color`
* Los bordes también toman el color de la propiedad `color`.
* `border-top-width`
* `border-right-width`
* `border-bottom-width`
* `border-left-width`
* `border-top-style`
* `border-right-style`
* `border-bottom-style`
* `border-left-style`
* `border-top-color`
* `border-right-color`
* `border-bottom-color`
* `border-left-color`

## Border radius

* `border-radius: top-left top-right bottom-right bottom-left`: es un shorthand.
* `border-radius: x / y`: redondeado en el eje `x` y redondeado en el eje `y`.
  * `border-radius: x x x x / y y y y`

## Outline

* No es parte del modelo de caja.
* No influye en el tamaño layout.
* Se utiliza para enforcar elementos o en accesibilidad.

## Box shadow

* Es el sombreado de los elementos.
* `box-shadow: offset-x offset-y blur spread color inset`
  * `offset-x`: posición del sombreado en el eje `x` hacia la derecha.
  * `offset-y`: posición del sombreado en el eje `y` hacia abajo.
  * `blur`: difuminado de la sombra. 
  * `spread`: proporción del tamaño de la sombra.
  * `color`: color de la sombra.
  * `inset`: sombreado hacia adentro.

## Pseudoclases

* Son selectores dinámicos o contextuales.
* Comienzan con dos puntos `:`.
* `:hover`: pasar sobre un elemento.
* `:active`: presionar un enlace o botón.
* `:visited`: un link visitado.
* `:target`: selecciona el destino de un enlace.
* `:not()`: selecciona a los elementos que no cumplan con la condición.
* `:empty`: selecciona elementos vacíos (sin contenido).
* `:is()`: considera la especificidad de cada elemento dentro de la condición.
* `:where()`: no considera la especificidad de cada elemento dentro de la condición.

## Pseudoclases de formularios

* `:required`: un campo es obligatorio.
* `:checked`: selecciona un checkbox.
* `:focus`: selecciona cuando se utiliza un elemento.

## Pseudoclases de hijos

* `:first-child`: selecciona el primer hijo de un elemento padre.
* `:last-child`: selecciona el último hijo de un elemento padre.
* `:first-of-type`: selecciona el primer hijo de cada tipo de un elemento padre.
* `:last-of-type`: selecciona el último hijo de cada tipo de un elemento padre.

## Funciones de pseudoclases de hijos

* `:nth-child()`: selecciona los hijos de un elemento padre que cumplan con la secuencia.
  * `n` comienza en cero.
  * `of` es opcional.
* `:nth-last-child()`: selecciona los últimos hijos de un elemento padre que cumplan con la secuencia.
* `:nth-of-type()`: selecciona los hijos de cada tipo de un elemento padre que cumplan con la secuencia.
* `:nth-last-of-type()`: selecciona los últimos hijos de cada tipo de un elemento padre que cumplan con la secuencia.

## Background

* `background: image position/size repeat attachment origin clip`: es un shorthand.
* `background-repeat`:
  * `repeat`
  * `no-repeat`
  * `repeat-x`
  * `repeat-y`
* `background-size`:
  * `auto`: utiliza las dimensiones reales de la imagen. 
  * `width`
  * `height`
  * `contain`: rellena el alto o el ancho del elemento sin cortar o deformar la imagen.
  * `cover`: rellana todo el elemento recortando la imagen.
* `background-position`
* `background-clip`: define en qué área se mostrará el fondo.
* `background-origin`: define desde dónde comienza a dibujar el fondo.
* `background-attachment`: establece si el fondo debe moverse con el scroll.

## Colores

* `rgb`: es aditiva (se acerca al blanco).
  * Red: 0 a 255.
  * Green: 0 a 255.
  * Blue: 0 a 255.
* `rgba`: como `rgb` pero agrega transparencia.
  * Alpha: 0 a 1 (0 transparente y 1 visible).
* `CMYK`: es sustractiva (se acerca al oscuro).
* Hexadecimal: #00FF00FF (2 dígitos de Red, 2 de Green, 2 de Blue y 2 de transparencia).
  * Se puede abreviar #00FF00 a #0F0.
* `hsl`:
  * Hue: tono de 0 a 360.
  * Saturation: intensidad del color de 0 gris a 100% color puro.
  * Light: luz de 0 negro a 100% blanco.

## Degradados

* `background-image: linear-gradient(position, color1, color2 stop, ...)`
* `background-image: radial-gradient(size position, color1, color2 stop, ...)`
* `background-image: repeating-linear-gradient(position, color1, color2 stop, ...)`
* `background-image: repeating-radial-gradient(size position, color1, color2 stop, ...)`

> El primer fondo de una lista de múltiples fondos es el primero en aparecer en la imagen.

## Tipografías

* Tipografía: es la disciplina (y arte) que se encarga del diseño y legibilidad de las letras.
* Fuente: es un tipo especifico de letra.
* Glifo: es cada símbolo (caracter) de una fuente.
* Estilos: son las variaciones de una fuente (normal, cursiva, negritas, etc.).
* Familia tipográfica: son diferentes fuentes de la misma familia que comparten rasgos en común (incluso el nombre).
* `Serif`: son fuentes con terminaciones pronunciadas.
* `Sans Serif`: son fuentes sin terminaciones (es el más utilizado).
* `Slab Serif`: son fuentes con terminaciones no tan pronunciadas.
* `Display`: son fuentes utilizadas en tamaños grandes o títulos. 
* `Handwriting`: son fuentes que simulan la escritura a mano.
* `Monospace`: son fuentes con el mismo espaciado (se utilizan en programación o terminales).
* `font-family: "Nombre de la fuente", fuente-alternativa;`
* Unidades de medida:
  * `em`:
    * Surge del tamaño de la letra M.
    * Es el porcentaje del tamaño de la fuente del padre más cercano.
  * `rem`:
    * Surge del tamaño de la letra M respecto a la raíz o base (`:root`).
    * El `font-size` por defecto de `:root` es 16px.
    * Este tamaño no cambia al menos que se sobreescriba en `:root`.
* `font-size`: modifica el tamaño de la letra.
* `font-style`:
  * `normal`
  * `italic`
* `font-weight`: modifica el grosor de la fuente.
  * `normal`
  * `bold`
  * Número
* `text-align`: permite alinear el texto.
  * `left`
  * `center`
  * `right`
  * `justify`
* `line-height`: modifica la altura de interlineado.
  * `em`
  * `rem`
  * Número: porcentaje respecto al tamaño de la fuente.
* `text-transform`:
  * `uppercase`
  * `lowercase`
  * `capitalize`
* `text-decoration`: subrayado de texto.
  * `underline`
  * `line-through`
  * `none`
* `letter-spacing`: espaciado entre letras.
* `word-spacing`: espaciado entre palabras.

> Evitar utilizar pixeles para fuentes.

## Referencias

* [EDteam - Curso: CSS desde cero (2024).](https://ed.team/cursos/css)
* [W3C - Documentación oficial de CSS.](https://www.w3.org/TR/CSS)
* [W3C - Descripciones de todas las especificaciones de CSS.](https://www.w3.org/Style/CSS/specs.en.html)
* [Can I use - Herramienta para conocer la compatibilidad de las características de CSS en diferentes navegadores.](https://caniuse.com)
* [normalize.css - A modern alternative to CSS resets.](https://necolas.github.io/normalize.css)
* [W3Schools - Nombres de colores en HTML y CSS.](https://www.w3schools.com/colors/colors_names.asp)
* [Jonas Ohlsson Aden - CSS Specificity Graph Generator.](https://jonassebastianohlsson.com/specificity-graph)
* [W3C - CSS Color Module Level 3.](https://www.w3.org/TR/css-color-3)
* [Google Fonts.](https://fonts.google.com)
