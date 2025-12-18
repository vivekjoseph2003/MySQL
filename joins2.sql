SELECT employees.id, employees.name, department.department_name
FROM employees
LEFT JOIN department
ON employees.id = department.emp_id;

SELECT employees.id, employees.name, department.department_name
FROM employees
INNER JOIN department
ON employees.id = department.emp_id;

SELECT department.emp_id, employees.name, department.department_name
FROM employees
RIGHT JOIN department
ON employees.id = department.emp_id;
