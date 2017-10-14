SELECT e.country, c.name, cn.name 
FROM encompasses e
JOIN country c ON e.country = c.code
JOIN continent cn ON cn.name = e.continent
WHERE cn.name IN ('Europe','Asia')
ORDER BY cn.name;