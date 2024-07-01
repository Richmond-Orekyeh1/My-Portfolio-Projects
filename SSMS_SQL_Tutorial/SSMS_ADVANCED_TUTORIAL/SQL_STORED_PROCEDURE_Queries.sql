/*
Today's Topic: STORED PROCEDURES
*/

CREATE PROCEDURE TEST
AS
SELECT *
FROM EmployeeDemographics

EXEC TEST



CREATE PROCEDURE Temp_Employee2
AS
CREATE TABLE #temp_Employee2 
(JobTitle VARCHAR(100),
EmployeesPerJob INT,
AvgAge INT,
AVGSalary INT)


INSERT INTO #temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM SQLTutorial..EmployeeDemographics AS Emp
JOIN SQLTutorial..EmployeeSalary Sal
	ON Emp.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle

SELECT * 
FROM #temp_Employee2 


EXEC Temp_Employee2 @JobTitle = 'Salesman'