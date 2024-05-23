-- STRINGS FUNCTIONS

-- LENGTH
SELECT LENGTH('Richmond');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

-- UPPER
SELECT UPPER('Richmond');

SELECT first_name, UPPER(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT LOWER('Richmond');

SELECT first_name, LOWER(first_name)
FROM employee_demographics
ORDER BY 2;

-- TRIM

SELECT TRIM('       Richmond     ');

-- LEFT TRIM

SELECT LTRIM('       Richmond     ');

-- RIGHT TRIM

SELECT RTRIM('       Richmond     ');



-- SUBSTRING

SELECT first_name, LEFT(first_name, 4)
FROM employee_demographics
;


SELECT first_name, RIGHT(first_name, 4)
FROM employee_demographics
;



-- SUBSTRINGS

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2),
birth_date, 
SUBSTRING(birth_date, 3, 2)
FROM employee_demographics
;


-- REPLACE

SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics
;


-- LOCATE

SELECT LOCATE('i', 'Richmomd');

SELECT first_name, LOCATE('An', first_name)
FROM employee_demographics
;

-- CONCATINATION

SELECT first_name, last_name, 
CONCAT(first_name, '  ', last_name)
FROM employee_demographics