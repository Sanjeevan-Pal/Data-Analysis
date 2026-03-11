--UNIONS

--RETURNS THE first_name AND last_name COLUMN BY PERFORMING AN UNION FUNCTION
SELECT first_name, last_name
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary;

--RETURNS first_name AND last_name COLUMN BY PERFORMING AN UNION FUNCTION BETWEEN THREE TABLES AND LABELLING THEM ACCORDINGLY
SELECT first_name, last_name, 'Old Man' AS 'Label'
FROM employee_demographics
WHERE age>40 AND gender='Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS 'Label'
FROM employee_demographics
WHERE age>50 AND gender='Female'
UNION
SELECT first_name, last_name, 'Highly Paid' AS 'Label'
FROM employee_salary
WHERE salary>70000
ORDER BY first_name, last_name;