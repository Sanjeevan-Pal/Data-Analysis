--COMMON TABLE EXPRESSIONS

WITH CTE_example AS (
    SELECT gender, 
           AVG(salary) avg_salary, 
           MAX(salary) max_salary, 
           MIN(salary) min_salary, 
           COUNT(salary) count_sal
    FROM employee_demographics dem
    JOIN employee_salary rem
    ON dem.employee_id = rem.employee_id
    GROUP BY gender
    )
SELECT AVG(avg_salary)        
FROM CTE_example;

WITH CTE_EXAMPLE1 AS (
    SELECT gender,
        AVG(salary) avg_salary,
        MAX(salary) max_salary,
        MIN(salary) min_salary,
        COUNT(salary) count_salary
    FROM employee_demographics dem
    JOIN employee_salary rem
    ON dem.employee_id=rem.employee_id
    GROUP BY gender
    )
SELECT*
FROM CTE_EXAMPLE1;