--
-- Oracle SQL Avan�ado 
--
-- Se��o 22 - Objetos do Banco de Dados
--
-- Aula 2 - Referenciando Objetos de outro Schema (Usu�rio)

-- Referenciando Objetos de outro Schema (Usu�rio)

-- Conectar como usu�rio hr

-- Consultando a Tabela employees do schema do usu�rio HR

SELECT *
FROM   employees;

SELECT *
FROM   hr.employees;

-- Conectar como usu�rio sys (DBA)

-- Criar o usu�rio ALUNO

-- Criar o usu�rio ALUNO

create user aluno
identified by aluno
default tablespace users
temporary tablespace temp
quota unlimited on users;

grant create session to aluno; -- Privil�gio de criar uma conex�o ao usu�rio aluno


-- Criar uma conex�o no SQL Developer para o usu�rio ALUNO para o banco XEPDB1


-- Conectar como usu�rio aluno

-- Consultando a Tabela employees do schema do usu�rio HR

SELECT *
FROM   hr.employees;

-- Erro ORA-00942: a tabela ou view n�o existe

-- Conectar como usu�rio hr ou como usu�rio sys (DBA)

-- Passar o privil�go SELECT no objeto hr.employees para o usu�rio aluno

GRANT SELECT on hr.employees to aluno;

-- Conectar como usu�rio aluno

SELECT *
FROM   hr.employees;

-- Conectar como usu�rio sys (DBA)

-- criar um sinonimo p�blico employees para hr.employees

drop public synonym employees;

create public synonym employees for hr.employees;

-- Conectar como usu�rio aluno

SELECT *
FROM  employees;
