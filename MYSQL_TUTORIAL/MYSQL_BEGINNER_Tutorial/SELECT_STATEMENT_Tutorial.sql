SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
age
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
age + 10
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
(age + 10) * 10 + 10
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT first_name
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT first_name, gender
FROM parks_and_recreation.employee_demographics;