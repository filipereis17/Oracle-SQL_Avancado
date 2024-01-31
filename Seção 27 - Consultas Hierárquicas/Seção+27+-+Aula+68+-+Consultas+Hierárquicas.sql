--
-- Oracle SQL Avan�ado 
--
-- Se��o 27 - Consultas Hier�rquicas
--
-- Aula 1 - Consultas Hier�rquicas
--

-- Consultas Hier�rquicas

-- Conectar como HR

-- Consultando a estrutura da Tabela employees

DESC employees

SELECT *
FROM   employees;

-- Consulta Hier�rquica sobre a Tabela employees UP to DOWN a partir de manager_id IS NULL

SELECT     LEVEL, employee_id, first_name, last_name, job_id, manager_id
FROM       employees
START WITH manager_id IS NULL
CONNECT BY PRIOR employee_id = manager_id;