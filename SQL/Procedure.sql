CREATE PROCEDURE large_salaries
AS
BEGIN
	SELECT*
	FROM employee_salary
	WHERE salary>=50000;
END;

EXEC large_salaries;

CREATE PROCEDURE large_salaries2
AS 
BEGIN
	SELECT*
	FROM employee_salary
	WHERE salary>=50000;
	SELECT*
	FROM employee_salary
	WHERE salary>100000;
END;

EXEC large_salaries2;

CREATE PROCEDURE large_salaries5(@salary INT)
AS 
BEGIN
	SELECT*
	FROM employee_salary
	WHERE employee_id=salary;
END;
EXEC large_salaries5 @salary=4 ;