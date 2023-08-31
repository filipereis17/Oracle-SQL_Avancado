--
-- Oracle SQL Avan�ado 
--
-- Se�ão 23 - Objetos do Banco de Dados
--
-- Aula 3 - Vis�es Din�micas de Performance

-- Consultando Vis�es Din�micas de Performance

-- Conectar como usu�rio sys

SELECT *
FROM   v$tablespace;

SELECT * 
FROM   v$datafile;

SELECT file#, name, bytes/1024/1024 MB, blocks, status
FROM   v$datafile;

SELECT * 
FROM v$tempfile;

SELECT file#, name, bytes/1024/1024 MB, blocks, status 
FROM   v$tempfile;

SELECT * 
FROM   v$controlfile;

SELECT * 
FROM   v$parameter;

SELECT * 
FROM   v$parameter
WHERE  name = 'db_block_size';