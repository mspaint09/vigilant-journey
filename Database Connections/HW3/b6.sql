SELECT country1, c.name, COUNT(country2) 
FROM borders b
JOIN country c ON c.code=b.country1
GROUP BY country1, c.name
HAVING COUNT(country2)>1;