--CASE 

--RETRUNS A NEW COLUMN AS Age_Status BY APPLYING VARIOUS CASES
SELECT first_name, last_name,
CASE
	WHEN age<=30 THEN 'Young'
	WHEN age BETWEEN 31 AND 50 THEN 'Old'
	WHEN age >=50 THEN 'Must do yoga'
END AS [Age_Status]
FROM employee_demographics;

--RETURNS SALARY BONUSES WITH CERTAIN NEW CASES APPLIED
SELECT first_name, last_name, salary,
CASE
	WHEN salary<50000 THEN salary+salary*(0.05)
	WHEN salary>=50000 THEN salary+salary*(0.07)
	WHEN dept_id = 6 THEN salary+salary*(0.1)
END 
FROM employee_salary;