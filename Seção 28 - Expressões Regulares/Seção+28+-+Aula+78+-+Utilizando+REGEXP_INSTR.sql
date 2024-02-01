--
-- Oracle SQL Avan�ado 
--
-- Se��o 28 - Express�es Regulares
--
-- Aula 5 - Utilizando REGEXP_INSTR
--

-- Express�es Regulares

-- Conectar como HR

-- utilizando REGEXP_INSTR

DROP TABLE employees_copy;

CREATE TABLE employees_copy
AS 
SELECT employee_id, first_name || ' ' || last_name name, email, phone_number, hire_date, job_id,
       salary, commission_pct, manager_id, department_id
FROM employees;

-- Compara��o case sensitivo (default), a partir da posi��o 1 para primeira ocorrencia encontrada

SELECT name, REGEXP_INSTR(name, '^[A-Z][[:alpha:]]+ ') as position
FROM employees_copy;

-- Compara��o case sensitivo (default), a partir da posi��o 1 para primeira ocorrencia encontrada

SELECT name, REGEXP_INSTR(name, '^[A-Z][[:alpha:]]+ ', 1,1,0,'c') as position
FROM employees_copy;
