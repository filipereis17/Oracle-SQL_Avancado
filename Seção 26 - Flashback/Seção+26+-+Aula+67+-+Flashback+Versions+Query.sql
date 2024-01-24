--
-- Oracle SQL Avan�ado 
--
-- Se��o 26 - FLASHBACK
--
-- Aula 5 - Flashback Versions Query
--

-- Utilizando Flashback Versions Query

-- Flashback Query - Privil�gios necess�rios

-- Conectar como Sys

GRANT EXECUTE ON DBMS_FLASHBACK to HR;

ALTER SYSTEM SET UNDO_RETENTION = 172800; -- 172800 segundos = 2880 minutos = 48 horas

SELECT 172800 segundos, 172800/60 minutos, 172800/60/60 horas
FROM dual;

-- Conectar como HR

-- Criando uma c�pia da Tabela employees

DROP TABLE employees_copy;

CREATE TABLE employees_copy
AS 
SELECT *
FROM   employees;

SELECT *
FROM   employees_copy;

-- Consultar o System Change Number (SCN) atual 

SELECT DBMS_FLASHBACK.GET_SYSTEM_CHANGE_NUMBER
FROM   dual;

-- SCN = 5086585
-- Meu SCN = 37785846

SELECT employee_id, first_name, last_name, job_id, salary
FROM   employees_copy
WHERE  employee_id = 180;

UPDATE employees_copy
SET    salary = 10000
WHERE  employee_id = 180;

COMMIT;

SELECT DBMS_FLASHBACK.GET_SYSTEM_CHANGE_NUMBER
FROM   dual;

-- SCN = 5086689
-- Meu SCN = 37785878

-- Consultando a tabela employees_copy atual

SELECT employee_id, first_name, last_name, job_id, salary
FROM   employees_copy
WHERE  employee_id = 180;

-- Consultando a tabela employees_copy na posi��o anterior ao Update (SCN 3737968) utilizando Flashback Query

SELECT employee_id, first_name, last_name, job_id, salary
FROM   employees_copy as of SCN 37785846
WHERE  employee_id = 180;

-- Consultando a tabela employees_copy na posi��o atual

SELECT employee_id, first_name, last_name, job_id, salary
FROM   employees_copy 
WHERE  employee_id = 180;

-- Consultando o hist�rico de atualiza��es do employee_id = 180

SELECT versions_startscn, 
       versions_starttime, 
       versions_endscn, 
       versions_endtime,
       versions_xid, 
       versions_operation,
       employee_id, 
       first_name, 
       last_name, 
       salary
FROM   employees_copy 
       VERSIONS BETWEEN SCN 37785846 AND 37785878
WHERE  employee_id = 180;

SELECT versions_startscn, 
       versions_starttime, 
       versions_endscn, 
       versions_endtime,
       versions_xid, 
       versions_operation,
       employee_id, 
       first_name, 
       last_name, 
       salary
FROM   employees_copy 
       VERSIONS BETWEEN timestamp  TO_TIMESTAMP('24/01/2024 16:45:53', 'DD/MM/YYYY HH24:MI:SS') AND 
                                   TO_TIMESTAMP('24/01/2024 16:46:00', 'DD/MM/YYYY HH24:MI:SS')
WHERE  employee_id = 180;