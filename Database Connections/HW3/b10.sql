SELECT name, population FROM city
WHERE population is not null
AND population = (select max(population) FROM city)
ORDER BY population DESC;