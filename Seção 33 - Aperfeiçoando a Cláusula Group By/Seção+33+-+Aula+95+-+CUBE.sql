--
-- Oracle SQL Avan�ado 
--
-- Se��o 34 - Aperfei�oando a Cl�usula Group By
--
-- Aula 4 - CUBE

-- CUBE

-- Conectar como usu�rio sales

-- Utilizando CUBE

SELECT continent, country, city, SUM(units_sold)
FROM sales
GROUP BY CUBE(continent, country, city);




