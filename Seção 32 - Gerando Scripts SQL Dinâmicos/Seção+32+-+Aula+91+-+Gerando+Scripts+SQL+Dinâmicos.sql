--
-- Oracle SQL Avan�ado 
--
-- Se��o 32 - Gerando Scripts SQL Din�micos
--
-- Aula 1 - Gerando Scripts SQL Din�micos

-- Gerando Scripts SQL Din�micos

-- Conectar como usu�rio sys

-- Criar um usuario curso

DROP USER curso; 

CREATE User curso
IDENTIFIED BY curso
DEFAULT TABLESPACE users
QUOTA UNLIMITED ON users
TEMPORARY TABLESPACE temp;

GRANT CONNECT, RESOURCE TO curso;

-- Crie uma pasta no Windows C:\cursos\oracle\sql_especialista 
-- Na linha de comando do Windows execute:

mkdir C:\cursos\oracle\sql_especialista

-- No SQL Developer crie uma Conex�o para o usu�rio curso

-- Conectar como usu�rio curso

DROP TABLE alunos;

CREATE TABLE alunos
(aluno_id NUMBER(11),
 nome VARCHAR2(200));

DROP TABLE cursos;

CREATE TABLE cursos
(curso_id NUMBER(11),
 nome VARCHAR2(200),
 preco NUMBER(11,2));
 
 -- Consultando as Tabelas do usu�rio conectado (curso)
 
 SELECT *
 FROM   user_tables;

-- Criando um script que remove (drop) todas as tabelas do usu�rio que esta conectado (curso)

SET HEADING OFF
SPOOL C:\cursos\oracle\sql_especialista\drop_tables.sql
SELECT 'DROP TABLE ' || table_name || ' cascade constraints;'
FROM   user_tables;
SPOOL OFF

-- Edite e vizualize o arquivo gerado C:\cursos\oracle\sql_especialista\drop_tables.sql

-- No SQLDeveloper execute o Script C:\cursos\oracle\sql_especialista\drop_tables.sql

@C:\cursos\oracle\sql_especialista\drop_tables.sql

-- Consultando as Tabelas do usu�rio conectado (curso)
 
 SELECT *
 FROM   user_tables;
