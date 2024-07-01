/*
WHERE Staement
=, <>, <, >, AND, OR, LIKE, NULL, NOT NULL, IN */


-- To check where name is Richmond on the Table
SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Richmond'

-- To check where name is NOT Richmond on the Table
SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Richmond'

-- To check where age is greater 30 on the Table
SELECT *
FROM EmployeeDemographics
WHERE Age > 30

-- To check where age is greater than or equal to 30 on the Table
SELECT *
FROM EmployeeDemographics
WHERE Age >= 30

-- To check where age is Less than 32 on the Table
SELECT *
FROM EmployeeDemographics
WHERE Age < 32

-- To check where age is Less than or equal to 32 on the Table
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32

-- To check where age is Less than or equal to 32 and their Gender is only male on the Table
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male'

-- To check where age is less than or equals 32 or the Gender is male on the Table
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male'

-- To check where LastName starts with an S on the Table
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'

-- To check where LastName ends with an S on the Table
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S'

-- To check where LastName starts with an S and has an O in it on the Table
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%o%'

-- To check where FirstName has no value in it on the Table
SELECT *
FROM EmployeeDemographics
WHERE FirstName IS NULL

-- To check where FirstName has values in it on the Table
SELECT *
FROM EmployeeDemographics
WHERE FirstName IS NOT NULL

-- To check multiple Equals Statement in FirstName on the Table
SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Richmond', 'Faith', 'Jame')

