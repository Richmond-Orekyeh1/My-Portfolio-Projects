/*
Today's Topic: UPDATING/DELETING Data
INSERT: This is going to create a new Row in the Table
UPDATE: This is going to Alter a preexisting Row in the Table
DELETE: this is going to specify what Row(s) you want to remove from the Table
*/


SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

UPDATE SQLTutorial.dbo.EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax'


UPDATE SQLTutorial.dbo.EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'


UPDATE SQLTutorial.dbo.EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE EmployeeID = 1012


DELETE 
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1005


