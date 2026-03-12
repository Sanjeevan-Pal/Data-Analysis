--SUBQUERIES

--RETURNS BY APPLYINNG A SUBQUERY INSIDE THE WHERE CLAUSE
SELECT*
FROM employee_demographics
WHERE employee_id IN 
	(
	SELECT employee_id 
	FROM employee_salary
	WHERE dept_id=1
	)

--RETURNS BY APPLYING A SUBQUERY OF AVERAGE SALARY IN THE salary COLUMN
SELECT first_name, salary,
	(
	SELECT AVG(salary)
	FROM employee_salary
	) AS [Average Salary]
FROM employee_salary;

