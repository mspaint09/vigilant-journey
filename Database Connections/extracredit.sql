with src as(
      SELECT c.code, c.name, c.population as country_population, r.name as religion, r.percentage,  (r.percentage/100) * c.population as religious_pop
      FROM religion R
      JOIN country C ON C.code = R.country
), src1 AS(
           SELECT SUM(population) as wrldpop FROM country 
)
SELECT S.religion, SUM(S.religious_pop),round(SUM(religious_pop)/s1.wrldpop,2) as rel_world_percent
FROM src S, src1 s1 
GROUP BY S.religion,s1.wrldpop
order by 3 desc