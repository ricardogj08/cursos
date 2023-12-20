CREATE TABLE students (
  id INT,
  name VARCHAR(25) NOT NULL,
  major VARCHAR(25) UNIQUE,
  PRIMARY KEY(id)
);

.mode table
.nullvalue NULL

INSERT INTO students VALUES(1, 'Jack', 'Biology');
INSERT INTO students VALUES(2, 'Kate', 'Sociology');
INSERT INTO students VALUES(3, NULL, 'Chemistry');
INSERT INTO students VALUES(4, 'Jack', 'Biology');
INSERT INTO students VALUES(5, 'Mike', 'Computer Science');

SELECT * FROM students;
