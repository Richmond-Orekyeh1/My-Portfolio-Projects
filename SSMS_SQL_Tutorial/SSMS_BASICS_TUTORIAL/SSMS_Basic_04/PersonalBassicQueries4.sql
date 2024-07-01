SELECT *
FROM EmployeeDetails
WHERE 

SELECT *
FROM EmployeeSalarys


SELECT Gender, COUNT(Gender)
FROM EmployeeDetails
GROUP BY Gender

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDetails
GROUP BY Gender, Age

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDetails
WHERE Age > 31
GROUP BY Gender, Age



SELECT Gender, Age, COUNT(Gender) AS CountGender
FROM EmployeeDetails
WHERE Age > 31
GROUP BY Gender, Age
ORDER BY CountGender DESC

SELECT Gender, Age, COUNT(Gender) AS CountGender
FROM EmployeeDetails
WHERE Age > 31
GROUP BY Gender, Age
ORDER BY Gender DESC