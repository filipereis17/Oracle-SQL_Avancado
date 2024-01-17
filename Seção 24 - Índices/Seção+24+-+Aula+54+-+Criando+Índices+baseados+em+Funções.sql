--
-- Oracle SQL Avan�ado 
--
-- Se��o 24 - �ndices
--
-- Aula 8 - Criando �ndices baseados em Fun��es 

-- Criando um �ndice para a coluna first_name

DROP INDEX employees_first_name_idx;

CREATE INDEX employees_first_name_idx ON employees (first_name);

SELECT *
FROM   employees
WHERE  UPPER(first_name) = 'DANIEL';

-- Analize o custo do comando no plano de execu��o

-- Criando um �ndice baseado em Fun��o para a coluna first_name

CREATE INDEX employees_upper_first_name_idx ON employees (UPPER(first_name));

-- Criando �ndices baseados em Fun��es 

SELECT *
FROM   employees
WHERE  UPPER(first_name) = 'DANIEL';

-- Analise o custo do comando no plano de execu��o