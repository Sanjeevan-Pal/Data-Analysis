-- JOINS 

--RETURNS THE WHOLE employee_demographics TABLE
SELECT* 
FROM employee_demographics;

--RETURNS THE WHOLE employee_salary TABLE
SELECT*
FROM employee_salary;

--RETURNS ALL THE COMMON COLUMNS PRESENT IN BOTH THE TABLES
SELECT*
FROM employee_demographics
INNER JOIN employee_salary 
ON employee_demographics.employee_id=employee_salary.employee_id;

--RETURNS ALL THE COLUMN WHICH ARE PRESENT IN THE RIGHT TABLE
SELECT* 
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS rem
ON dem.employee_id = rem.employee_id;

--RETURNS ALL THE COMMON COLUMNS PRESENT IN BOTH THE TABLES
SELECT*
FROM employee_salary emp1
JOIN employee_salary emp2
ON emp1.employee_id = emp2.employee_id;

--RETURNS COMMON ROWS FROM BOTH THE TABLES, WITH THE COLUMN employee_id FROM employee_salary TABLE LINKED TO THE employee_id+1 FROM THE employee_salary TABLE 
SELECT*
FROM employee_salary emp1
JOIN employee_salary emp2
ON emp1.employee_id+1 = emp2.employee_id;

--RETURNS THE TABLE parks_departments
SELECT*
FROM parks_departments;

--RETURNS THE JOINING OF THREE TABLES
SELECT*
FROM employee_demographics as tab1
INNER JOIN employee_salary as tab2
ON tab1.employee_id = tab2.employee_id
INNER JOIN parks_departments as tab3
ON tab2.dept_id = tab3.department_id;