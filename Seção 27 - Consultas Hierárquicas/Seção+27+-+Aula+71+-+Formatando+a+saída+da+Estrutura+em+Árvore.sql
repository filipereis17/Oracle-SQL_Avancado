--
-- Oracle SQL Avan�ado 
--
-- Se��o 27 - Consultas Hier�rquicas
--
-- Aula 4 - Consultas Hier�rquicas - Formatando a sa�da da Estrutura em �rvore
--

-- Consultas Hier�rquicas - Formatando a sa�da da Estrutura em �rvore

-- Conectar como HR

-- Consulta Hier�rquica sobre a Tabela employees UP to DOWN a partir do manager_id IS NULL
-- Formatando Formatando a Estrutura em �rvore utilizando LPAD

SELECT     LEVEL, LPAD(last_name, LENGTH(last_name)+(LEVEL*4)-4,' ') last_name
FROM       employees
START WITH manager_id IS NULL
CONNECT BY PRIOR employee_id = manager_id;

SELECT     LPAD(LEVEL || '.' || last_name, LENGTH(LEVEL || '.' || last_name)+(LEVEL*4)-4,' ') last_name
FROM       employees
START WITH manager_id IS NULL
CONNECT BY PRIOR employee_id = manager_id;