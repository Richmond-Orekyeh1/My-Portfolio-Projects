/* 
GROUP BY, ORDER BY
*/

SELECT *
FROM EmployeeDemographics

/* The GROUP BY Statement is similar to DISTINCT Statement because they both bring out unique values
but the difference is that while DISTINCT only brings out the very first unique values in a column, 
GROUP BY actually puts multiple similar values into one specific value. For eample, */

SELECT DISTINCT(Gender)
FROM EmployeeDemographics


/* ORDER BY */

-- To check group values using Gender
SELECT Gender
FROM EmployeeDemographics
GROUP BY Gender

-- To count values that Grouped by Gender
SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
GROUP BY Gender

-- To count values that are grouped by 
SELECT Gender, Age, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
GROUP BY Gender, Age

-- To count values that are Grouped by Gender Where age is greater than 30
SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 30
GROUP BY Gender



/* ORDER BY */

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 30
GROUP BY Gender
ORDER BY Gender DESC

-- To order by age and gende, where it first order by age, then it orders by gender
SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender DESC

-- You can also use numbers to represent the columns you want to order by
SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC