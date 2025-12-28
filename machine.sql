CREATE TABLE employee(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    leaves INT
);

INSERT INTO employee VALUES(1,'Raju','Sales',1),
(2,'Sangeetha','Sales',3),
(3,'Vinay','Operations',8),
(4,'Abey','Packing',2),
(5,'Thomas','Packing',1),
(6,'Muneer','Operations',7),
(7,'Aparna','Sales',3),
(8,'Abid','Operations',9),
(9,'Fathima','Sales',11),
(10,'Varghese','Operations',14);


CREATE TABLE exam(
    id INT PRIMARY KEY,
    employee_id INT,
    exam_status VARCHAR(20),
    FOREIGN KEY(employee_id) REFERENCES employee(id));

INSERT INTO exam VALUES(1,2,'Pass'),
(2,5,'Fail'),
(3,1,'Fail'),
(4,8,'Pass'),
(5,3,'Pass'),
(6,1,'Pass'),
(7,6,'Fail'),
(8,9,'Pass'),
(9,10,'Pass');


SELECT * FROM employee WHERE leaves>5 AND department='Sales';
SELECT COUNT(*) AS no_of_employees FROM employee WHERE department='Operations';
SELECT department,COUNT(*) AS no_of_employees FROM employee GROUP BY department;
SELECT department,SUM(leaves) AS total_leave FROM employee GROUP BY department HAVING SUM(leaves)>10;
SELECT DISTINCT employee.name FROM employee 
JOIN exam ON employee.id=exam.employee_id
WHERE exam.exam_status='Pass';
SELECT name FROM employee WHERE id NOT IN(SELECT employee_id FROM exam);
