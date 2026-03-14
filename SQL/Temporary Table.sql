SELECT* INTO #temp1
FROM employee_demographics;

SELECT*
FROM #temp1;

SELECT*
FROM #temp1
WHERE AGE>40;