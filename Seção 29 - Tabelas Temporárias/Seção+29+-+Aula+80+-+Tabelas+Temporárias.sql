--
-- Oracle SQL Avan�ado 
--
-- Se��o 29 - Tabelas Tempor�rias
--
-- Aula 1 - Tabelas Tempor�rias
--

-- Tabelas Tempor�rias

-- Conectar como HR (primeira Sess�o)

-- Criando uma Tabela Tempor�ria

DROP TABLE hr.tmp_employees;

CREATE GLOBAL TEMPORARY TABLE hr.tmp_employees
(employee_id  NUMBER(6),
 first_name VARCHAR2(20),
 last_name VARCHAR2(25),
 email VARCHAR2(25),
 phone_number VARCHAR2(20),
 hire_date DATE,
 job_id VARCHAR2(10),
 salary NUMBER(8,2),
 commission_pct NUMBER(2,2),
 manager_id NUMBER(6),
 department_id NUMBER(4))
 ON COMMIT PRESERVE ROWS;
 
-- Consultando a Tabela Tempor�ria 

SELECT *
FROM   hr.tmp_employees;

-- Conectar como SYS (Segunda Sess�o)

-- Consultando a Tabela Tempor�ria 

SELECT *
FROM hr.tmp_employees;

-- Voltar para primeira Sess�o hr

-- Inserir linhas na Tabela Tempor�ria

INSERT INTO hr.tmp_employees
  SELECT *
  FROM hr.employees;
  
COMMIT;

-- Consultando a Tabela Tempor�ria 

SELECT *
FROM hr.tmp_employees;

-- Voltar para segunda Sess�o SYS

-- Consultando a Tabela Tempor�ria 

SELECT *
FROM hr.tmp_employees;

-- Voltar para primeira Sess�o hr

-- Encerrar a Sess�o

-- Conectar como SYS (Segunda Sess�o)

-- Consultando a Tabela Tempor�ria 

SELECT *
FROM hr.tmp_employees;

-- Inserir linhas na Tabela Tempor�ria

INSERT INTO hr.tmp_employees
  SELECT *
  FROM hr.employees;

-- Conectar como hr (Terceira Sess�o)

-- Consultando a Tabela Tempor�ria 

SELECT *
FROM hr.tmp_employees;

-- Conectar como sys (Quarta Sess�o)

-- Consultando a Tabela Tempor�ria 

SELECT *
FROM hr.tmp_employees;
