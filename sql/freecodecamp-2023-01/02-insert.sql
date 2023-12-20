CREATE TABLE students (
  id INT,
  name VARCHAR(25),
  major VARCHAR(25),
  PRIMARY KEY(id)
);

.mode table
.nullvalue NULL

/**
 * Inserta información
 * en la tabla de estudiantes.
 */
INSERT INTO students VALUES(1, 'Jack', 'Biology');
INSERT INTO students VALUES(2, 'Kate', 'Sociology');

-- Espefiica la información a insertar.
INSERT INTO students(id, name) VALUES(3, 'Claire');

SELECT * FROM students;
