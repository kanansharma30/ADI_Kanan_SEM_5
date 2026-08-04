CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(30),
    age INT,
    course_id INT
);
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(30)
);

INSERT INTO students
VALUES
(1,'Anshi',20,101),
(2,'Ujjwal',25,102),
(3,'Vaibhav',25,102),
(4,'Ujjwal',26,103);

SELECT * FROM students;

INSERT INTO courses
VALUES
(101,'Java'),
(102,'Python'),
(103,'PA');

SELECT * FROM courses;

SELECT
students.name,
courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.course_id;

INSERT INTO students
VALUES
(5,'Lav',30,104);

SELECT
students.name,
courses.course_name
FROM students
LEFT JOIN courses
ON students.course_id = courses.course_id;


INSERT INTO courses
VALUES
(105,'AI');

SELECT
students.name,
courses.course_name
FROM students
RIGHT JOIN courses
ON students.course_id = courses.course_id;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(30),
    manager_id INT
);


INSERT INTO employees
VALUES
(1,'CEO',NULL),
(2,'Manager',1),
(3,'Vaibhav',2),
(4,'Ujjwal',2);

SELECT * FROM employees;


SELECT
e.name AS Employee,
m.name AS Manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.id;
