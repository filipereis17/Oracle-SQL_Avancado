--
-- Oracle SQL Avan�ado 
--
-- Se��o 28 - Express�es Regulares
--
-- Aula 3 - Utilizando REGEXP_REPLACE
--

-- Utilizando REGEXP_REPLACE

-- Conectar como HR

-- Compara��o case sensitivo (default), a partir da posi��o 1 para todas combina��es encontradas

SELECT phone_number, REGEXP_REPLACE(phone_number, '\.','-') as phone
FROM employees;

-- Compara��o case sensitivo, a partir da posi��o 1 para todas combina��es encontradas

SELECT phone_number, REGEXP_REPLACE(phone_number, '\.','-',1,0,'c') as phone
FROM employees;

-- Compara��o case n�o sensitivo (default), a partir da posi��o 1 para todas combina��es encontradas

SELECT phone_number, REGEXP_REPLACE(phone_number, '\.','-',1,0,'i') as phone
FROM employees;