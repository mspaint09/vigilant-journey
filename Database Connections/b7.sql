SELECT code, name
FROM country
WHERE code NOT IN (SELECT DISTINCT country1 FROM BORDERS);