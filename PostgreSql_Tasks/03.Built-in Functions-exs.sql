CREATE TABLE
	bookings_calculation
AS
SELECT
	booked_for,
	CAST(booked_for * 50 AS NUMERIC) AS multiplication,
	CAST(booked_for % 50 AS NUMERIC) AS modulo
FROM 
	bookings
WHERE 
	apartment_id = 93;

SELECT
	latitude,
	ROUND(latitude, 2),
	TRUNC(latitude, 2)
FROM
	apartments	


SELECT
	longitude,
	ABS(longitude)
FROM
	apartments	


SELECT
	EXTRACT(YEAR FROM booked_at) AS YEAR,
	EXTRACT(MONTH FROM booked_at) AS MONTH,
	EXTRACT(DAY FROM booked_at) AS DAY,
	EXTRACT(HOUR FROM booked_at) AS HOUR,
	EXTRACT(MINUTE FROM booked_at) AS MINUTE,
	CEIL(EXTRACT(SECOND FROM booked_at)) AS SECOND
FROM 
	bookings;	


SELECT
	user_id,
	AGE(starts_at, booked_at) AS early_birds
FROM
	bookings
WHERE 
	starts_at - booked_at >= '10 months';	


SELECT
	companion_full_name,
	email
FROM
	users
WHERE
	companion_full_name ILIKE '%aNd%' AND email NOT LIKE '%@gmail';


SELECT
	LEFT(first_name, 2) AS initials,
	COUNT('initials') AS user_count
FROM
	users
GROUP BY
	initials
ORDER BY
	user_count DESC,
	initials ASC;

SELECT 
    SUM(booked_for) AS total_value
FROM 
    bookings
WHERE 
    apartment_id = 90;

SELECT
AVG(multiplication) AS average_value
FROM
bookings_calculation
	



    CREATE VIEW view_river_info
AS
SELECT
	CONCAT_WS(
		' ',
		'The river', 
		river_name, 
		'flows into the', 
		outflow, 
		'and is',
		"length",
		'kilometers long.'
	) AS "River Information"
FROM
	rivers
ORDER BY
	river_name;

	CREATE VIEW
	view_continents_countries_currencies_details
AS
SELECT
	CONCAT(con.continent_name, ': ', con.continent_code) AS continent_details,
	CONCAT_WS(' - ', cou.country_name, cou.capital, cou.area_in_sq_km, 'km2') AS country_information,
	CONCAT(curr.description, ' ', '(', curr.currency_code, ')') AS currencies
FROM 
	continents AS con
JOIN 
	countries as cou
ON 
	con.continent_code = cou.continent_code
JOIN
	currencies AS curr
ON
	curr.currency_code = cou.currency_code
ORDER BY
	country_information ASC,
	currencies ASC;


SELECT 
*
FROM
view_continents_countries_currencies_details

ALTER TABLE
	countries
ADD COLUMN
	capital_code CHAR(2);
	
UPDATE 
	countries
SET 
	capital_code = SUBSTRING(capital FROM 1 FOR 2);

SELECT
	SUBSTRING(description FROM 5) AS substring
FROM
	currencies;	


SELECT
	(REGEXP_MATCHES("River Information", '([0-9]{1,4})'))[1]
	-- SUBSTRING("River Information", '([0-9]{1,4})')
FROM
	view_river_info;	


SELECT
	REPLACE(mountain_range, 'a', '@') AS replace_a,
	REPLACE(mountain_range, 'A', '$') As replace_A
FROM
	mountains;	

SELECT 
	capital,
	TRANSLATE(capital, 'áãåçéíñóú', 'aaaceinou') AS translated_name
FROM
	countries	

SELECT
	continent_name,
	TRIM(LEADING FROM continent_name)
-- 	LTRIM(continent_name)
FROM
	continents;	

SELECT
	continent_name,
	TRIM(TRAILING FROM continent_name)
--  RTRIM(continent_name)
FROM
	continents;


SELECT
	LTRIM(peak_name, 'M') AS left_trim,
	RTRIM(peak_name, 'm') AS right_trim
FROM
	peaks;	



	SELECT
	CONCAT(m.mountain_range, ' ', p.peak_name) AS mountain_information,
	LENGTH(CONCAT(m.mountain_range, ' ', p.peak_name)) AS characters_length,
	BIT_LENGTH(CONCAT(m.mountain_range, ' ', p.peak_name)) AS bits_of_a_tring
FROM
	mountains AS m
JOIN
	peaks AS p
ON
	m.id = p.mountain_id;


SELECT
	population,
	LENGTH(CAST(population AS VARCHAR))
FROM
	countries

SELECT
	peak_name,
	LEFT(peak_name, 4) AS positive_left,
	LEFT(peak_name, -4) AS negative_left
FROM
	peaks	


SELECT
	peak_name,
	RIGHT(peak_name, 4) AS positive_right,
	RIGHT(peak_name, -4) AS negative_right
FROM
	peaks	

UPDATE
	countries
SET
	iso_code = UPPER(LEFT(country_name, 3))
WHERE
	iso_code IS NULL;	

UPDATE
	countries
SET
	country_code = LOWER(REVERSE(country_code));


SELECT
	CONCAT_WS(
		' ',
		elevation,
		REPEAT('-', 3) || REPEAT('>', 2),
		peak_name
	) AS "Elevation --->> Peak Name"
FROM	
	peaks
WHERE 
	elevation >= 4884;



CREATE TABLE
	bookings_calculation
AS
SELECT
	booked_for,
	CAST(booked_for * 50 AS NUMERIC) AS multiplication,
	CAST(booked_for % 50 AS NUMERIC) AS modulo
FROM 
	bookings
WHERE 
	apartment_id = 93;		


SELECT
	latitude,
	ROUND(latitude, 2),
	TRUNC(latitude, 2)
FROM
	apartments	