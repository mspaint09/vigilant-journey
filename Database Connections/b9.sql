SELECT e.country, c.name, COUNT(e.continent) 
FROM encompasses e
JOIN country c ON e.country = c.code
WHERE e.continent IN ('Europe','Asia')
GROUP BY e.country, c.name
HAVING COUNT(e.continent)>1;