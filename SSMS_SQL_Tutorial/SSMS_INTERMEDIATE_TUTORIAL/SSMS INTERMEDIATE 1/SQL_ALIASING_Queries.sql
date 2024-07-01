/*
Today's Topic: ALIASING
ALIASING: This tempoarily changing the the column/Table name in your script
*/


SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics


SELECT FirstName + ' ' + LastName AS FullName
FROM SQLTutorial.dbo.EmployeeDemographics


SELECT AVG(Age) AS AvgAge
FROM SQLTutorial.dbo.EmployeeDemographics



SELECT Demo.EmployeeID
FROM SQLTutorial.dbo.EmployeeDemographics As Demo


SELECT Demo.FirstName + ' ' + LastName AS FullName
FROM SQLTutorial.dbo.EmployeeDemographics As Demo


SELECT Demo.EmployeeID, Sal.Salary
FROM SQLTutorial.dbo.EmployeeDemographics As Demo
JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
	ON	Demo.EmployeeID = Sal.EmployeeID



SELECT Demo.EmployeeID, Demo.FirstName, Sal.JobTitle, Ware.Age
FROM [SQLTutorial].[dbo].EmployeeDemographics As Demo
LEFT JOIN [SQLTutorial].[dbo].EmployeeSalary AS Sal
	ON	Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQLTutorial].[dbo].WareHouseEmployeeDemographics AS Ware
	ON Demo.EmployeeID = Ware.EmployeeID