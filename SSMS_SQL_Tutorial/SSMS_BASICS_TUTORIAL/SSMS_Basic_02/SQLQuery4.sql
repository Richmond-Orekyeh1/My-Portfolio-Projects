/*
SELECT Statement
*, TOP, DISTINCT, COUNT, AS, MAX, MIN, AVG
*/


-- To check all the data on the list
SELECT *
FROM EmployeeDemographics

-- To check FirstName And LastName on the list
SELECT FirstName, LastName
FROM EmployeeDemographics

-- To check the Top 5 data on the list
SELECT TOP 5 *
FROM EmployeeDemographics

-- To check for Unique values on the list
SELECT DISTINCT(EmployeeID)
FROM EmployeeDemographics

-- To check for Unique values on the Gender column on the list
SELECT DISTINCT(Gender)
FROM EmployeeDemographics

-- To count LastName on the list
SELECT COUNT(LastName)
FROM EmployeeDemographics

-- To count LastName on the list and assign a column name
SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics

