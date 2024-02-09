--
-- Oracle SQL Avan�ado 
--
-- Se��o 34 - Aperfei�oando a Cl�usula Group By
--
-- Aula 2 - GROUPING SETS

-- GROUPING SETS

-- Conectar como usu�rio sales

SELECT *
FROM sales
ORDER BY continent, country, city;

SELECT continent, SUM(units_sold)
FROM sales 
GROUP BY continent;

SELECT country, SUM(units_sold)
FROM sales 
GROUP BY country;

SELECT city, SUM(units_sold)
FROM sales 
GROUP BY city;

-- Utilizando GROUPING SETS

SELECT continent, country, city, SUM(units_sold)
FROM sales
GROUP BY GROUPING SETS(continent, country, city);

-- Utilizando GROUPING SETS (Incluindo Total Geral)

SELECT continent, country, city, SUM(units_sold)
FROM sales
GROUP BY GROUPING SETS(continent, country, city, ());




