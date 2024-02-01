--
-- Oracle SQL Avan�ado 
--
-- Se��o 28 - Express�es Regulares
--
-- Aula 4 - Utilizando REGEXP_SUBSTR
--

-- Express�es Regulares

-- utilizando REGEXP_SUBSTR

-- Conectar como HR

DROP TABLE employees_copy;

CREATE TABLE employees_copy
AS 
SELECT employee_id, first_name || ' ' || last_name name, email, phone_number, hire_date, job_id,
       salary, commission_pct, manager_id, department_id
FROM employees;

SELECT *
FROM   employees_copy;

-- Compara��o case sensitivo (default), a partir da posi��o 1 para 1 combina��es encontrada

SELECT name, REGEXP_SUBSTR(name, '^[A-Z][[:alpha:]]+ ') as first_name
FROM employees_copy;

-- Compara��o case sensitivo, a partir da posi��o 1 para 1 combina��es encontrada

SELECT name, REGEXP_SUBSTR(name, '^[A-Z][[:alpha:]]+ ',1,1,'c') as first_name
FROM employees_copy;
