CREATE TABLE students (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25),
  major VARCHAR(25)
);

.mode table
.nullvalue NULL

INSERT INTO students(name, major) VALUES('Jack', 'Biology');
INSERT INTO students(name, major) VALUES('Kate', 'Sociology');

SELECT * FROM students;
