/*
Today's Topic: PARTITION BY
*/

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics


SELECT *
FROM SQLTutorial.dbo.EmployeeSalary



SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics Demo
JOIN SQLTutorial.dbo.EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID


SELECT Demo.FirstName, Demo.LastName, Demo.Gender, Sal.Salary, 
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM SQLTutorial.dbo.EmployeeDemographics Demo
JOIN SQLTutorial.dbo.EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID

SELECT Demo.FirstName, Demo.LastName, Demo.Gender, Sal.Salary, 
COUNT(Gender) 
FROM SQLTutorial.dbo.EmployeeDemographics Demo
JOIN SQLTutorial.dbo.EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY Demo.FirstName, Demo.LastName, Demo.Gender, Sal.Salary


SELECT Demo.Gender, COUNT(Gender) 
FROM SQLTutorial.dbo.EmployeeDemographics Demo
JOIN SQLTutorial.dbo.EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY Demo.Gender