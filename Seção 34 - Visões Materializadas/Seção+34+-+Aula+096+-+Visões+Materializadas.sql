--
-- Oracle SQL Avan�ado 
--
-- Se��o 34 - Vis�es Materializadas
--
-- Aula 1 - Vis�es Materializadas

-- Conectar como usu�rio SYS

-- Passando system privilege necess�rio para criar uma Materialized View 

GRANT CREATE MATERIALIZED VIEW to hr;

-- Conectar como usu�rio HR

-- Removendo uma Materialized View 

DROP MATERIALIZED VIEW mv_department_max_salaries;

-- Criando uma Materialized View  

CREATE MATERIALIZED VIEW mv_department_max_salaries
BUILD IMMEDIATE 
REFRESH COMPLETE 
ON DEMAND
ENABLE QUERY REWRITE 
AS 
  SELECT department_id, MAX(salary) 
  FROM employees
  GROUP BY department_id
  ORDER BY department_id;
       
-- Consultando a Materialized View

SELECT *
FROM   mv_department_max_salaries;

