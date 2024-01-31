--
-- Oracle SQL Avan�ado 
--
-- Se��o 27 - Consultas Hier�rquicas
--
-- Aula 3 - Consultas Hier�rquicas utilizando a Pseudocoluna LEVEL
--

-- Consultas Hier�rquicas utilizando a Pseudocoluna LEVEL

-- Conectar como HR
-- Consulta Hier�rquica sobre a Tabela employees UP to DOWN a partir do manager_id IS NULL

SELECT     LEVEL, employee_id, first_name, last_name, job_id, manager_id
FROM       employees
START WITH manager_id IS NULL
CONNECT BY PRIOR employee_id = manager_id;

-- Consulta Hier�rquica sobre a Tabela employees UP to DOWN a partir do manager_id IS NULL
-- Restringindo somente o LEVEL = 2

SELECT    LEVEL, employee_id, first_name, last_name, job_id, manager_id
FROM      employees
WHERE     LEVEL = 2
START WITH manager_id IS NULL
CONNECT BY PRIOR employee_id = manager_id;

-- Consulta Hier�rquica sobre a Tabela employees UP to DOWN a partir do manager_id IS NULL
-- Restringindo somente o LEVEL <> 2

SELECT    LEVEL, employee_id, first_name, last_name, job_id, manager_id
FROM      employees
WHERE     LEVEL <> 2
START WITH manager_id IS NULL
CONNECT BY PRIOR employee_id = manager_id;