--WINDOW FUNCTIONS

--RETURNS first_name, last_name, average of salary BY PATITIONING GENDER AND ORDERING IT BY employee_id 
SELECT dem.first_name, dem.last_name,gender, AVG(salary) 
OVER(
	PARTITION BY gender
	ORDER BY dem.employee_id
	) AS Average_Salary
FROM employee_demographics dem 
JOIN employee_salary sal
ON dem.employee_id=sal.employee_id;

--RETURNS first_name, last_name, sum of salary BY PATITIONING GENDER AND ORDERING IT BY employee_id 
SELECT dem.first_name, dem.last_name,gender, SUM(salary) 
OVER(
	PARTITION BY gender
	ORDER BY dem.employee_id
	) AS Average_Salary
FROM employee_demographics dem 
JOIN employee_salary sal
ON dem.employee_id=sal.employee_id;

--RETURNS RANK, DENSED RANK, ROW NUMBER BY APPLYING WINDOWING FUNCTIONS
SELECT dem.first_name, dem.last_name, gender, salary,
RANK()
OVER(
	PARTITION BY gender
	ORDER BY salary DESC
	) Rank_Num,
DENSE_RANK()
OVER(
	PARTITION BY gender
	ORDER BY salary DESC
	) Dense_Rank_Num,
ROW_NUMBER() 
OVER(
	PARTITION BY gender
	ORDER BY salary DESC
	) Row_Num
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id=sal.employee_id;