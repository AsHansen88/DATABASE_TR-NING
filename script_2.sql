CREATE DATABASE kea;
USE kea;

CREATE TABLE student2(
    id     int AUTO_INCREMENT,
    name   VARCHAR(50) NOT NULL,
    email  VARCHAR(50) UNIQUE,
    gender binary,
    PRIMARY KEY (id)
);

INSERT INTO  student2 (name, email, gender) VALUES('Anders', 'ande970s@stud.kea.dk', 1);
INSERT INTO  student2 (name, email, gender) VALUES('Anna', 'hej970s@stud.kea.dk', 0);
INSERT INTO  student2 (name, email, gender) VALUES('kia', 'Nej970s@stud.kea.dk', 1);
INSERT INTO  student2 (name, email, gender) VALUES('Søren', 'søren970s@stud.kea.dk', 1);

SELECT * FROM student2;

-- UPDATE

UPDATE student2 SET name='Henning' WHERE id = 1;

-- DELETE

DELETE FROM student2 WHERE id=1;

-- AND OR NOT
SELECT * FROM student2 WHERE  gender = 0 AND name = 'kia';
SELECT * FROM student2 WHERE gender = 0 OR name = 'Anders';
SELECT * FROM student2 WHERE NOT gender = 0;

-- LIKE
SELECT * FROM student2 WHERE name LIKE '%a';

-- ORDER BY

SELECT * FROM student2 ORDER BY name desc;

SELECT COUNT(*) as NumberOfStudentsAtKea FROM student2;
SELECT AVG(gender) as GenderAVG FROM student2;

-- IN

SELECT * FROM student2 WHERE gender IN (0,2,5,6);
SELECT * FROM student2 WHERE name IN (SELECT name from student2 WHERE name LIKE '%a');

