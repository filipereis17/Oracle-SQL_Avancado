--
-- Oracle SQL Avan�ado 
--
-- Se��o 28 - Express�es Regulares
--
-- Aula 6 - Utilizando REGEXP_COUNT
--

-- Express�es Regulares

-- Conectar como HR

-- utilizando REGEXP_COUNT

DROP TABLE employees_copy;

CREATE TABLE employees_copy
AS 
SELECT employee_id, first_name || ' ' || last_name name, email, phone_number, hire_date, job_id,
       salary, commission_pct, manager_id, department_id
FROM employees;

-- Compara��o case sensitivo (default), a partir da posi��o 1 

SELECT name, REGEXP_COUNT(name, 'a|e|i|o|u') as numero_de_combina��es
FROM employees_copy;

SELECT name, REGEXP_SUBSTR(name, ' [A-Z][[:alpha:]]+$') as last_name, REGEXP_COUNT(name, ' [A-Z][[:alpha:]]+$') as count
FROM employees_copy;