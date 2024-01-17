--
-- Oracle SQL Avan�ado 
--
-- Se��o 24 - �ndices
--
-- Aula 1 - �ndices

-- �ndices

-- Conectar como usu�rio HR

DROP INDEX emp_name_ix;
DROP INDEX employees_last_name_idx;
DROP INDEX employees_name_idx;
DROP INDEX employees_last_name_first_name_idx;
DROP INDEX employees_job_id_idx;
DROP INDEX employees_phone_number_idx;

-- FULL TABLE SCAN

SELECT *
FROM   employees;

-- Analize o custo do comando no plano de execu��o

SELECT *
FROM   employees
WHERE  phone_number = '515.127.4565';

-- Analize o custo do comando sem usar �ndice pelo plano de execu��o

-- Criando um �ndice �nico B-tree Simples

CREATE UNIQUE INDEX employees_phone_number_idx
ON employees(phone_number);

SELECT *
FROM   employees
WHERE  phone_number = '515.127.4565';

-- Analize o custo do comando pelo plano de execu��o - Note que agora ele deve estar utilizando o �ndice criado

-- Criando um �ndice Unico automaticamente na cria��o da Constraint de Unique

DROP INDEX employees_phone_number_idx;

ALTER TABLE employees
ADD CONSTRAINT employees_phone_number_uk UNIQUE (phone_number);