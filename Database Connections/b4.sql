select c.code, c.name, c.population, String_agg(n.name::text,',') neighbor_list, sum(n.population) 
From country c
JOIN borders b ON UPPER(c.code)=UPPER(b.country1)
JOIN country n ON UPPER(b.country2)=UPPER(n.code)
GROUP By c.code, c.name, c.population;

