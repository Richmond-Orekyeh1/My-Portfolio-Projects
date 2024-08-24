SELECT * FROM artist;

SELECT * FROM canvas_size;

SELECT * FROM image_link;

SELECT * FROM museum_hours;

SELECT * FROM museum;

SELECT * FROM product_size;

SELECT * FROM subject;

SELECT * FROM work;



-- Identify the museums which are open on both Sunday and Monday. Display museum name, city
SELECT 
	m.name AS meseum_name,
	m.city
FROM museum_hours AS mh1
JOIN museum AS m 
	ON mh1.museum_id = m.museum_id
WHERE day = 'Sunday'
	AND EXISTS (SELECT 1
	FROM museum_hours mh2
	WHERE mh2.museum_id = mh1.museum_id
	AND mh2.day = 'Monday');


-- Which museum is open for the longest during a day. Dispay museum name, state and hours open and which day?
SELECT *
FROM
	(
	SELECT 
		m.name AS museum_name,
		m.state,
		mh.day,
		TO_TIMESTAMP(open, 'HH:MI AM') AS opening_time,
		TO_TIMESTAMP(close, 'HH:MI PM') AS closing_time,
		TO_TIMESTAMP(close, 'HH:MI PM') - TO_TIMESTAMP(open, 'HH:MI AM') AS duration,
		RANK() OVER(ORDER BY (TO_TIMESTAMP(close, 'HH:MI PM') - TO_TIMESTAMP(open, 'HH:MI AM')) DESC) AS rank
	FROM museum_hours AS mh
	JOIN museum AS m
		ON mh.museum_id = m.museum_id
	) AS me
WHERE me.rank = 1;


-- Display the country and the city with the most number of museums. 
-- Output 2 separate colums to mention the city and country. 
-- If there are multiple values, seperate them with comma.

WITH cte_country 
			AS
		(SELECT 
			country, 
			COUNT(country),
		 	RANK() OVER(ORDER BY COUNT(country) DESC) AS rank
		 FROM museum
		 GROUP BY country),	 
	cte_city 
			AS
		(SELECT 
			city, 
			COUNT(city),
			RANK() OVER(ORDER BY COUNT(country) DESC) AS rank
		FROM museum
		GROUP BY city)
SELECT 
	STRING_AGG(DISTINCT country, ' , ') AS country,
	STRING_AGG(city, ' , ') AS city
FROM cte_country
CROSS JOIN cte_city
WHERE cte_country.rank = 1
	AND cte_city.rank = 1;

















