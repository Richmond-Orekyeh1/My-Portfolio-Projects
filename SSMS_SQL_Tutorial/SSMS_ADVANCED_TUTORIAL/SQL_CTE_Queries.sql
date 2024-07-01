/*
Today's Topic: CTEs
CTE:This means COMMON TABLE EXPRESSION. It is a query that is temporarily saved in a memory
*/

WITH CTE_Employee AS 
(SELECT FirstName, LastName, Gender, Salary, COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender,
AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary
FROM SQLTutorial.dbo.EmployeeDemographics AS Emp
JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
	ON Emp.EmployeeID = Sal.EmployeeID
WHERE Salary > '45000')
--SELECT *
--FROM CTE_Employee

SELECT FirstName, AvgSalary
FROM CTE_Employee