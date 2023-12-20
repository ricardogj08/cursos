CREATE TABLE students (
  id INT,
  name VARCHAR(25),
  major VARCHAR(25) DEFAULT 'Undecided',
  PRIMARY KEY(id)
);

.mode table
.nullvalue NULL

INSERT INTO students(id, name) VALUES(1, 'Jack');
INSERT INTO students VALUES(2, 'Kate', 'Sociology');
INSERT INTO students VALUES(3, NULL, 'Chemistry');
INSERT INTO students VALUES(4, 'Jack', 'Biology');
INSERT INTO students VALUES(5, 'Mike', 'Computer Science');

SELECT * FROM students;
