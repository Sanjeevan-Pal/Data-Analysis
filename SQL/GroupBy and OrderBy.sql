--USING THE DATABASE Parks_and_Recreation
USE Parks_and_Recreation;

--RETURNS THE COULMNS GENDER AND AVERAGE AGE NAMED AS Average Age WITH GROUPED BY GENDER FROM THE employee_demographics TABLE
SELECT gender, AVG(age) as [Average Age]
FROM employee_demographics
GROUP BY  gender;

--RETURNS THE COULMN OF OCCUPATION GROUPED BY OCCUPATION FROM THE employee_salary TABLE
SELECT occupation
FROM employee_salary
GROUP BY occupation;

--RETURNS THE COLUMNS OF GENDER, MAXIMUM OF AGE NAMED AS Maximum Age, MINIMUM OF AGE named as Minimum Age, TOTAL ROWS FROM THE employee_demographics TABLE
SELECT gender, MAX(age) as [Maximum Age], MIN(age) as [Minimum Age], COUNT(age) as [Total]
FROM employee_demographics
GROUP BY gender;

--RETURNS ALL THE COLUMNS ORDERED BY first_name COLUMN FROM THE employee_demographics TABLE
SELECT*
FROM employee_demographics
ORDER BY first_name;

--RETURNS ALL THE COLUMNS ORDERED BY employee_id COLUMN FROM THE employee_demographics TABLE
SELECT*
FROM employee_demographics
ORDER BY employee_id;

--RETURNS ALL THE COLUMNS ORDERED BY first_name IN DESCENDING ORDER FROM THE employee_demographics TABLE
SELECT*
FROM employee_demographics
ORDER BY employee_id DESC;

--RETURNS ALL THE COLUMNS ORDERED BY age and gender COLUMNS FROM THE employee_demographics TABLE
SELECT*
FROM employee_demographics
ORDER BY  age, gender;

--RETURNS ALL THE COLUMNS ORDERED BY THE COLUMN-NUMBER FROM THE employee_demographics TABLE
SELECT*
FROM employee_demographics
ORDER BY  4,5;