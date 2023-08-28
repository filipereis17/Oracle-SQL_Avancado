--
-- Oracle SQL Avan�ado 
--
-- Se��o 22 - Objetos do Banco de Dados
--
-- Aula 1 - Objetos do Banco de Dados

-- Consultando Objectos do Schema HR - Schema Objects

-- Conectar como usu�rio HR

DESC user_objects

SELECT   object_name, object_type, status
FROM     user_objects
ORDER BY object_type;

-- Conectar como usu�rio SYS (DBA)

DESC DBA_OBJECTS

SELECT   owner, object_name, object_type, status
FROM     dba_objects
WHERE    owner = 'HR'
ORDER BY object_type;

-- Exemplos de consultas a Nonschema Objects pelo Dicion�rio de Dados Oracle

SELECT *
FROM dba_tablespaces;

SELECT *
FROM   dba_users;