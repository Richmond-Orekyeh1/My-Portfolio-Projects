SELECT *
FROM EmployeeDetails

SELECT *
FROM EmployeeSalarys


SELECT TOP 5 *
FROM EmployeeDetails

SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDetails


SELECT MAX(Salary) AS HighestSalary
FROM EmployeeSalarys

SELECT MIN(Salary) AS LowestSalary
FROM EmployeeSalarys

SELECT AVG(Salary) AS AverageSalary
FROM EmployeeSalarys