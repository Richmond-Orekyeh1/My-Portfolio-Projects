-- CTEs: Common Tables Expression

SELECT gender, AVG(salary), MAX(salary), MIN(salary), COUNT(salary)
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender;


WITH CTE_Example (Gender, Avg_Sal, Max_Sal, Min_Sal, Count_Sal) AS
(
SELECT gender, AVG(salary) AS Avg_salary, MAX(salary) AS Max_salary, MIN(salary) AS Min_salary, COUNT(salary) AS Count_salary
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example
;


SELECT AVG(avg_salary)
FROM (SELECT gender, AVG(salary) AS Avg_salary, MAX(salary) AS Max_salary, MIN(salary) AS Min_salary, COUNT(salary) AS Count_salary
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
) AS example_subquery
;


WITH CTE_Example AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics
WHERE birth_date > '1985-01-01'
),
CTE_Example2 AS 
(SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_Example.employee_id = CTE_Example2.employee_id
;

