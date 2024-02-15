--
-- Oracle SQL Avan�ado 
--
-- Se��o 34 - Vis�es Materializadas
--
-- Aula 8 - Agendando Atualiza��es (refresh) peri�dicas de Vis�es Materializadas

-- Agendando Atualiza��es (refresh) peri�dicas de Vis�es Materializadas

-- Conectar como usu�rio HR

-- Removendo Materialized View Log

DROP MATERIALIZED VIEW LOG ON employees;

-- Criando Materialized View Log

CREATE MATERIALIZED VIEW LOG ON employees;

-- Criando uma Materialized View sales_managers_vw n�o populada imediatamente
-- e que realiza a pr�ximas atualiza��es (refreshes) a cada 1 dia

DROP MATERIALIZED VIEW mv_sales_manager;

CREATE MATERIALIZED VIEW mv_sales_manager
BUILD DEFERRED
REFRESH FORCE
NEXT sysdate + 1
AS
  SELECT *
  FROM   employees
  WHERE job_id = 'SA_MAN'
  ORDER BY department_id;

-- Consultando a Materialized View

SELECT *
FROM   mv_sales_manager;