/*
Today's Topic: UNION, UNION ALL
*/


SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics


SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
FULL OUTER JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics
ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID


SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics


SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
UNION ALL
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
UNION ALL
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID

SELECT EmployeeID, FirstName,Age
FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeSalary
ORDER BY EmployeeID

