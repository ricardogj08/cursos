CREATE TABLE students (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25),
  major VARCHAR(25)
);

.mode table
.nullvalue NULL

INSERT INTO students(name, major) VALUES('Jack', 'Biology');
INSERT INTO students(name, major) VALUES('Kate', 'Sociology');
INSERT INTO students(name, major) VALUES('Claire', 'Chemistry');
INSERT INTO students(name, major) VALUES('Jack', 'Biology');
INSERT INTO students(name, major) VALUES('Mike', 'Computer Science');

SELECT * FROM students;

/**
 * Actualiza la información de todos los
 * registros que cumplen con la condición.
 */
UPDATE students SET major = 'Bio'
  WHERE major = 'Biology';
UPDATE students SET major = 'Comp Sci'
  WHERE major = 'Computer Science';

SELECT * FROM students;

UPDATE students SET major = 'Comp Sci'
  WHERE id = 4;

-- Utilizando operadores lógicos.
UPDATE students SET major = 'Biochemistry'
  WHERE major = 'Bio' OR major = 'Chemistry';

SELECT * FROM students;

-- Actualiza varias columnas.
UPDATE students SET name = 'Tom', major = 'Undecided'
  WHERE id = 1;

SELECT * FROM students;

-- Actualiza todas las columnas.
UPDATE students SET major = 'Undecided';

SELECT * FROM students;

/**
 * Elimina todos los registros
 * de la tabla de estudiantes.
 */
--DELETE FROM students;

DELETE FROM students WHERE id = 5;

SELECT * FROM students;

/**
 * Elimina todos los registros
 * que cumplen con la condición.
 */
DELETE FROM students
  WHERE name = 'Tom' AND major = 'Undecided';

SELECT * FROM students;
