/*
Today's Topic: TEMP TABLES
*/

CREATE TABLE #temp_Employee 
(EmployeeID INT,
JobTitle VARCHAR(100),
Salary INT)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES 
('1001', 'HR', '45000')


-- To move data from a Table to a Temp Table
INSERT INTO #temp_Employee
SELECT *
FROM SQLTutorial..EmployeeSalary

DROP TABLE IF EXISTS #temp_Employee2
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


