--SELECT DISTINCT EmployeeID, [FirstName]
--FROM EmployeeDemographics
--ORDER BY EmployeeID



SELECT DISTINCT EmployeeID, [FirstName]
FROM EmployeeDemographics
GROUP BY EmployeeID, [FirstName]
ORDER BY EmployeeID