--
-- Oracle SQL Avan�ado 
--
-- Se��o 34 - Aperfei�oando a Cl�usula Group By
--
-- Aula 3 - ROLLUP

-- ROLLUP

-- Utilizando ROLLUP

SELECT continent, country, city, SUM(units_sold)
FROM sales
GROUP BY ROLLUP(continent, country, city);

-- Utilizando a Fun��o GROUPING_ID 

SELECT continent, GROUPING_ID(continent) GCONTINENT,
       country, GROUPING_ID(country) GCOUNTRY, 
       city, GROUPING_ID(city) GCITY,
       SUM(units_sold)
FROM sales
GROUP BY ROLLUP(continent, country, city);





