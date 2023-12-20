-- Crea la tabla de estudiantes.
CREATE TABLE students (
  id INT PRiMARY KEY,
  name VARCHAR(25),
  major VARCHAR(25)
);

-- Modo de salida.
.mode table

/**
 * Muestra la sentencia SQL
 * de la creación de la tabla.
 */
.schema students

PRAGMA table_info(students);
PRAGMA table_xinfo(students);

-- Elimina la tabla de estudiantes.
--DROP TABLE students;

/**
 * Agrega una nueva columna
 * en la tabla de estudiantes.
 */
ALTER TABLE students ADD gpa DECIMAL(3, 2);

PRAGMA table_info(students);

/**
 * Elimina la columna "gpa"
 * de la tabla de estudiantes.
 */
ALTER TABLE students DROP gpa;

PRAGMA table_info(students);
