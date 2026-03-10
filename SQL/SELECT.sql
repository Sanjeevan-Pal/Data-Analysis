SELECT*
FROM employee_demographics;

SELECT first_name, last_name, age, birth_date, age+10 as [age after 10 years]
FROM employee_demographics


SELECT DISTINCT first_name, last_name
FROM employee_demographics