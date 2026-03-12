--STRING FUNCTIONS

--RETURNS THE LENGTH OF THE STRING SPECIFIED
SELECT LEN('Skyfall');

--RETURNS THE LENGTH OF THE FIRSTNAME AS LENGTH NAMED COLUMN FROM THE TABLE employee_demographics
SELECT first_name, LEN(first_name) as ['Length']
FROM employee_demographics
ORDER BY 2;

--RETURNS THE SPECIFIED STRING IN UPPER AND LOWER CASE RESPECTIVELY
SELECT UPPER('sanjeevan');
SELECT LOWER('SANJEEVAN');

--RETURNS FIRSTNAME IN UPPER CASE
SELECT first_name, UPPER(first_name) as [Upper]
FROM employee_demographics;

--RETURNS THE STRING BY TRIMMING THEM IN SPECIFIED WAY 
SELECT TRIM('		SANJEEVAN		')
SELECT RTRIM('		SANJEEVAN		')

--RETURNS LEFT PART OF THE SPECIFIED STRING
SELECT LEFT(first_name,4)
FROM employee_demographics;

--RETURNS THE RIGHT PART OF THE SPECIFIED STRING
SELECT RIGHT(first_name,2)
FROM employee_demographics;

--RETURNS THE SUBSTRING FROM THE 3RD INDEX UPTO TWO CHARACTERS
SELECT SUBSTRING(first_name,3,2)
FROM employee_demographics;

--RETURNS first_name COLUMN BY REPLACING THE 'a' WITH 'z'
SELECT first_name, REPLACE(first_name,'a','z')
FROM employee_demographics;

--RETURNS THE Full_Name COLUMN BY CONCATING THEM TOGETHER
SELECT first_name, last_name,
CONCAT(first_name,' ', last_name) AS Full_Name
FROM employee_demographics;