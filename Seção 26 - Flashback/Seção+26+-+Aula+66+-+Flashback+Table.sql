--
-- Oracle SQL Avan�ado 
--
-- Se��o 26 - FLASHBACK
--
-- Aula 4 - Flashback Table
--

-- Utilizando Flashback Table

drop table employees_copia2;

CREATE TABLE employees_copia2
AS
SELECT *
FROM employees;

--Conectado como SYS 

GRANT FLASHBACK ON hr.employees_copia2 TO hr;

--Conectado como SYS ou HR

ALTER TABLE hr.employees_copia2 ENABLE ROW MOVEMENT;

-- Conectado como HR

SELECT *
FROM hr.employees_copia2 ;

-- Esperar por volta alguns minutos. Ex.: 10 minutos
DELETE FROM hr.employees_copia2 ;

COMMIT;

-- Consultando a Tabela

SELECT *
FROM hr.employees_copia2 ;

-- Resaurando a Tabela para posi��o de 5 minutos atras

FLASHBACK TABLE hr.employees_copia2 TO TIMESTAMP systimestamp - interval '5' minute;

-- Consultando a Tabela

SELECT *
FROM hr.employees_copia2;