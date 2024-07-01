/*
Today's Topic: CASE STATEMENT
*/


SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT *
FROM SQLTutorial.dbo.EmployeeSalary



SELECT FirstName, LastName, Age,
CASE
    WHEN Age > 30 THEN 'Old'
	ELSE 'Young'
END
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age


SELECT FirstName, LastName, Age,
CASE
    WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age


SELECT FirstName, LastName, Age,
CASE
    WHEN Age = 38 THEN 'Stanley'
    WHEN Age > 30 THEN 'Old'
	ELSE 'Baby'
END
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age


SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'SalesMan' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .5)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .04)
	ELSE Salary + (Salary * .03)
END AS SalaryAfterRaise
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
