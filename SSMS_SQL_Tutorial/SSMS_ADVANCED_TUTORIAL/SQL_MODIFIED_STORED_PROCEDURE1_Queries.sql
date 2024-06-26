USE [SQLTutorial]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee2]    Script Date: 14/04/2024 17:55:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Temp_Employee2]
@JobTitle NVARCHAR(100)
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
WHERE JobTitle = @JobTitle
GROUP BY JobTitle

SELECT * 
FROM #temp_Employee2