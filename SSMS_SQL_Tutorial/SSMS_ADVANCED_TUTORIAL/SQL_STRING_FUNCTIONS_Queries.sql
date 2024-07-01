/*

Today's Topic: String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/

-- Drop Table EmployeeErrors;


CREATE TABLE SQLTutorial.dbo.EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

SELECT *
From EmployeeErrors

-- Using Trim, LTRIM, RTRIM

SELECT EmployeeID, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

SELECT EmployeeID, RTRIM(employeeID) as IDRTRIM
FROM EmployeeErrors 

SELECT EmployeeID, LTRIM(employeeID) as IDLTRIM
FROM EmployeeErrors 

	



-- Using Replace

SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
FROM EmployeeErrors


-- Using Substring

SELECT SUBSTRING(FirstName,3,3)
FROM EmployeeErrors

SELECT err.FirstName, SUBSTRING(err.FirstName,1,3), dem.FirstName, SUBSTRING(dem.FirstName,1,3)
FROM EmployeeErrors AS err
JOIN EmployeeDemographics AS dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)


-- Gender

-- LastName

--Age

-- DOB
-- Using UPPER and LOWER

SELECT firstname, LOWER(firstname)
FROM EmployeeErrors

SELECT Firstname, UPPER(FirstName)
FROM EmployeeErrors
