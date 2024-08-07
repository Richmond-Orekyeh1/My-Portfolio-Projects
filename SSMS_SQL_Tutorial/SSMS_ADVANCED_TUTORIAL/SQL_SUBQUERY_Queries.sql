/*
Today's Topic: SUBQUERIES (in the SELECT, FROM, and WHERE Statement)
They are queries within a queries
*/

SELECT *
FROM EmployeeSalary

-- SUBQUERY in SELECT

SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) AS AllAvgSalary
FROM EmployeeSalary

-- How to do it with PARTITION BY

SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
FROM EmployeeSalary

-- Why GROUP BY doesn't work

SELECT EmployeeID, Salary, AVG(Salary) AS AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary
ORDER BY 1,2

-- SUBQUERY in FROM

SELECT Emp.EmployeeID, AllAvgSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
		FROM EmployeeSalary) AS Emp

-- SUBQUERY in WHERE
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID IN (
        SELECT EmployeeID
		FROM EmployeeDemographics
		WHERE Age > 30)