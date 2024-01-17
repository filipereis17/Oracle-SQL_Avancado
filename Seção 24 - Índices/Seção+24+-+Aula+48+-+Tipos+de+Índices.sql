--
-- Oracle SQL Avan�ado 
--
-- Se��o 24 - �ndices
--
-- Aula 2 - Tipos de �ndices 

-- Tipos de �ndices 

-- Conectar como usu�rio HR

DROP INDEX emp_name_ix;
DROP INDEX employees_last_name_idx;
DROP INDEX employees_name_idx;
DROP INDEX employees_last_name_first_name_idx;
DROP INDEX employees_job_id_idx;
DROP INDEX emp_job_ix;
DROP INDEX employees_phone_number_idx;
ALTER TABLE employees 
DROP CONSTRAINT employees_phone_number_uk;

-- Criando um Indice B-tree Simples

DROP INDEX employees_job_id_idx;

CREATE INDEX employees_job_id_idx
ON employees(job_id);	

SELECT *
FROM   employees
WHERE  job_id = 'IT_PROG';

-- Analize o custo do comando no plano de execu��o	  

DROP INDEX employees_last_name_idx;

SELECT *
FROM   employees
WHERE  last_name = 'Himuro';

-- Analize o custo do comando no plano de execu��o

-- Criando um Indice N�o �nico B-tree Simples

CREATE INDEX employees_last_name_idx
ON employees(last_name);

SELECT *
FROM  employees
WHERE last_name = 'Himuro';

-- Analize o custo do comando no plano de execu��o

-- Criando um Indice N�o �nico B-tree Composto

CREATE INDEX employees_last_name_first_name_idx
ON employees(last_name, first_name);

SELECT *
FROM   employees
WHERE  last_name = 'Himuro' AND 
       first_name = 'Guy';

-- Analize o custo do comando no plano de execu��o	  

-- Criando um Indice Bitmap Simples

DROP INDEX employees_job_id_idx;

CREATE BITMAP INDEX employees_job_id_idx
ON employees(job_id);

SELECT *
FROM   employees
WHERE  job_id = 'IT_PROG';

-- Analize o custo do comando no plano de execu��o	 

SELECT COUNT(DISTINCT job_id)
FROM employees;
