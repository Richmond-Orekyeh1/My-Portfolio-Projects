SELECT *
FROM EmployeeDetails


SELECT *
FROM EmployeeSalarys




SELECT *
FROM EmployeeDetails
WHERE FirstName = 'Joy'

SELECT *
FROM EmployeeDetails
WHERE FirstName <> 'Joy'


SELECT *
FROM EmployeeDetails
WHERE Age > 30

SELECT *
FROM EmployeeDetails
WHERE Age >= 30


SELECT *
FROM EmployeeDetails
WHERE Age <= 32 AND Gender = 'Male'

SELECT *
FROM EmployeeDetails
WHERE Age <= 32 OR Gender = 'Male'


SELECT *
FROM EmployeeDetails
WHERE FirstName LIKE 'S%' OR LastName LIKE 'S%'


SELECT *
FROM EmployeeDetails
WHERE FirstName LIKE '%S%'

SELECT *
FROM EmployeeDetails
WHERE FirstName LIKE 'S%o%'


SELECT *
FROM EmployeeDetails
WHERE FirstName IN ('Simon', 'Richmond', 'Sarah')