# EDteam

Curso: Java desde Cero 2024

## JDKs

* [Oracle](https://www.oracle.com/ca-en/java/technologies/downloads)
* [Adoptium](https://adoptium.net)
* [Amazon Corretto](https://aws.amazon.com/es/corretto)
* [Microsoft OpenJDK](https://learn.microsoft.com/es-es/java/openjdk/download)

## Introducción

* Java es un lenguaje de programación de alto nivel orientada a objetos.
* **Máquina virtual (Java Virtual Machine o JVM)**: transforma el código fuente a bytecode para ser ejecutado en cualquier sistema operativo.
* **Java Runtime Environment (JRE)**: incluye la máquina virtual y asigna los recursos necesarios para ejecutar una aplicación en Java.
* **Java Development Kit o JDK**: es un conjunto de utilidades para desarrollar, depurar y ejecutar aplicaciones en Java.
* Variable: es un espacio en la memoria del computador donde se puede almacenar y modificar datos durante la ejecución de un programa.
* Constantes: es un espacio en la memoria del computador donde se almacena un dato que no puede cambiar durante la ejecución de un programa.

## Tipos de datos

* Enteros:
  * short
  * int
  * long
* Decimales:
  * float
  * double
* Carácter:
  * char
* Texto:
  * string
* booleano

## Convención

* Variables: camelCase
* Clases: UpperCamelCase.
* Métodos: camelCase.
* Constantes: mayúsculas separados por guiones bajos.

    // Declaración y asignación de una constante.
    final int MAX_VALUE = 100;

## Lectura datos

La clase `Scanner` en Java se utiliza para la lectura de datos desde consola:

    Scanner scanner = new Scanner(System.in);

* Métodos disponibles en la clase `Scanner`:
  * `nextLine()`: leer una línea completa de texto.
  * `nextInt()`: leer un número entero.
  * `nextFloat()`: leer un número de punto flotante (float).
  * `nextDouble()`: leer un número de punto flotante (double).
  * `nextBoolean()`: leer un valor booleano (true/false).

## Escritura de datos

La escritura de datos en Java se realiza utilizando la clase `System.out`.

* Métodos disponibles:
  * `print`: muestra un mensaje sin salto de línea.
  * `println`: muestra un mensaje con salto de línea.

## Compilar y ejecutar

    javac FICHERO
    java CLASE

## Arrays

* Son de tamaño fijo y no pueden cambiar durante la ejecución del programa.
* Todos los elementos de un arreglo deben ser del mismo tipo de dato primitivo u objeto.
* El índice comienza en 0 hasta el tamaño del arreglo menos 1.
* `new`: reserva espacio en memoria para almacenar un tamaño fijo de elementos del mismo tipo de dato.

## POO

* **Abstracción**: es el proceso de definir los atributos y los métodos de una clase.
* **Encapsulamiento**: protege la información de manipulaciones no autorizadas.
* **Polimorfismo**: da la misma orden a varios objetos para que respondan de diferentes manera.
* **Herencia**: las clases hijos heredan atributos y métodos de la clase padre.
* **Clase**: es un modelo o plantilla para crear objetos que define las características (atributos) y comportamientos (métodos) comunes que tendrán los objetos.
* **Objeto**: es una entidad (instancia) con características y acciones específicas, creada a partir de una clase.
* **Constructor**: es un método especial dentro de una clase que se utiliza para inicializar los objetos de esa clase. Su propósito principal es establecer los valores iniciales de los atributos del objeto y realizar cualquier otra inicialización necesaria.
* **Clase abstracta**: es una clase que no se puede instanciar y contiene métodos abstractos que no tienen implementación, y que serán implementados en las clases hijas.
* `this`: hace referencia a métodos y atributos dentro de la misma clase.
* `super`: hace referencia a métodos y atributos de la clase padre dentro de una clase hija.

## Interfaces

* En Java no existe la herencia múltiple y en su lugar se utilizan las interfaces para simular la herencia múltiple.
* Una interfaz puede heredar a otra interfaz y extender de múltiples herencias.
* Todos los métodos de una interfaz son abstractos.
* Los atributos de una interfaz son constantes.
* Una clase puede implementar múltiples interfaces.
* Las interfaces no pueden contener métodos con implementación.

## Polimorfismo

* El polimorfismo brinda a los objetos la capacidad de comportarse de diversas maneras según el contexto.
* Aportando flexibilidad y simplicidad al código.
* Polimorfismo estático o de sobrecarga:
  * La resolución de qué método utilizar se realiza durante la compilación del programa.
  * Ocurre cuando hay múltiples métodos con el mismo nombre dentro de una clase y el compilador decide cuál utilizar en función de los tipos de argumentos.
* Polimorfismo dinámico o de sobreescritura:
  * La resolución de qué método utilizar se realiza en tiempo de ejecución del programa.
  * Ocurre cuando una clase derivada proporciona una implementación específica de un método que ya está definido en su clase base.
  * La elección del método se base en el tipo real del objeto en tiempo de ejecución.

## Colecciones

* Son estructuras similares a los arrays pero su tamaño puede variar con el tiempo.
* Las colecciones se encuentran en la API de Java "Collection".
* Tipos:
  * **Listas**: permite almacenar elementos duplicados.
    * Mantiene el orden de inserción de los elementos.
    * Proporciona acceso a los elemento por índice.
    * Implementaciones comunes: `ArrayList`, `LinkedList` y `Vector`.
  * **Set o conjuntos**: permite almacenar elementos únicos.
    * No se pueden ordenar.
    * Los elementos no se pueden modificar directamente.
  * **Mapas o diccionarios**: permite almacenar elementos en tuplas (2 columnas), con el identificador y el valor del elemento.

## Excepciones

* Son eventos anómalos que pueden ocurrir en tiempo de ejecución y que alteran el flujo de ejecución normal del programa.
* Estos eventos representan situaciones inesperadas o errores que deben ser manejados de manera adecuada para garantizar que el programa continúe ejecutándose y así evitar interrupciones.
* Excepciones comprobadas: son situaciones que ocurren durante la ejecución del programa y que el compilador obliga a manejar.
  * Representan condiciones que pueden ocurrir pero que están fuera del control del programador.
  * Estas excepciones deben ser declaradas en el encabezado del método o manejadas mediante bloques `try-catch`.
* Tipos de excepciones comprobadas:
  * `IOException`: indica un error en una operación de entrada o salida (I/O).
  * `FileNotFoundException`: se intenta acceder a un archivo que no existe en el sistema.
  * `ParseException`: se intenta analizar una cadena para convertirla a un formato específico.
  * `SQLException`: representa una excepción específica al momento de interactuar con una base de datos.
* Excepciones no comprobadas: son situaciones que ocurren durante la ejecución del programa y que el compilador no obliga a manejar de manera explícita.
  * Representan errores en tiempo de ejecución que podrían haberse evitado con una programación más cuidadosa.
  * Estas excepciones son subclases de `RuntimeException`.
* Tipos de excepciones no comprobadas:
  * `RuntimeException`: clase base para excepciones no comprobadas.
  * `NullPointerException`: ocurre cuando se intenta acceder a un objeto que en `null`.
  * `ArrayIndexOutOfBoundsException`: ocurre cuando se accede a un índice que está fuera del rango válido de un array.
  * `ArithmeticException`: indica un error aritmético (como una división entre cero).
* `finally` es opcional en un `try-catch`.

## Lanzamiento de excepciones

* Implica generar y lanzar manualmente instancias de la clase `Exception` o subclases, mediante la palabra `throw`.
* Notifica situaciones excepcionales para su manejo mediante bloques `try-catch`.
* Se utiliza para señalar errores y solicitar que se manejen en niveles superiores del programa.
* Mejora la capacidad de respuesta y robustez del código.

## Excepciones personalizadas

* Son útiles para representar situaciones excepcionales específicas en una aplicación que no están cubiertas por las excepciones predefinidas.
* Se utiliza para señalar errores y solicitar que se manejen en niveles superiores del programa.
* Mejora la capacidad de respuesta y robustez del código.
* `throws`: se utiliza en la firma de un método para declarar que ese método podría lanzar un tipo específico de excepción comprobada. Siempre y cuando la excepción personalizada herede de `Exception`.
* Lo más recomendado es utilizar excepciones que extiendan de la clase `RuntimeException` (no requieren de la firma de la excepción).

## Stream API

* Es una API que proporciona una forma declarativa de realizar operaciones sobre secuencias de elementos (listas o conjuntos).
* Permite un procesamiento más conciso y eficiente.

## Method reference

* Es una forma concisa de referenciar a un método existente como una expresión lambda.
* Simplifica la escritura de código al utilizar la sintaxis de referencia de método.
* Es conveniente para reemplazar una expresión lambda que simplifique la llamada a un método existente.
* Se utiliza cuando se llama a un método de instancia de un objeto específico que se pasa como parámetro.
* Se utiliza cuando se llama a un método estático de un clase (métodos que se pueden utilizar sin la necesidad de instanciar un objeto).

## Referencias

* [EDteam - Curso: Java desde Cero 2024.](https://ed.team/cursos/java)
* [Recursos del curso.](https://drive.google.com/drive/folders/16qMnmu8xOnWXz_jwunPrR-d0bNhorFnn)
