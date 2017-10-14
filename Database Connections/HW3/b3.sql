-- For each country, list the city (or cities) with the largest population. 
-- Select the country code of the country, followed by the province that the city is located in, along with the city name.

SELECT COUNTRY, PROVINCE, NAME, POPULATION FROM CITY 
WHERE (COUNTRY, POPULATION) IN (
								SELECT COUNTRY, MAX(POPULATION) FROM CITY GROUP BY COUNTRY ORDER BY COUNTRY
								);