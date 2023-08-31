--
-- Oracle SQL Avan�ado 
--
-- Se�ão 23 - Objetos do Banco de Dados
--
-- Aula 2 - Diferen�as entre as Vis�es com prefixo USER, ALL e DBA

-- Consultando vis�es do Dicion�rio de Dados

-- Consultando informa��es sobre objetos

-- Conectar como usu�rio hr

SELECT *
FROM   USER_OBJECTS;

SELECT *
FROM   ALL_OBJECTS;

-- Conectar como usu�rio SYS

SELECT *
FROM   DBA_OBJECTS
WHERE  owner = 'HR';

-- Consultando informa��es sobre tabelas

-- Conectar como usu�rio hr

SELECT *
FROM   USER_TABLES;

SELECT *
FROM   ALL_TABLES;

-- Conectar como usu�rio SYS

SELECT *
FROM   DBA_TABLES
WHERE  owner = 'HR';

-- Consultando informa��es sobre colunas de tabelas

-- Conectar como usu�rio hr

SELECT *
FROM   USER_TAB_COLUMNS
WHERE  table_name = 'EMPLOYEES' 
ORDER BY column_id;


SELECT *
FROM   ALL_TAB_COLUMNS
WHERE  owner = 'HR'  AND 
       table_name = 'EMPLOYEES' 
ORDER BY column_id;

-- Conectar como usu�rio SYS

SELECT *
FROM   DBA_TAB_COLUMNS
WHERE  owner = 'HR'  AND 
       table_name = 'EMPLOYEES' 
ORDER BY column_id;

-- Consultando informa��es sobre constraints de tabelas

-- Conectar como usu�rio hr

SELECT *
FROM   USER_CONSTRAINTS
WHERE  table_name = 'EMPLOYEES';

SELECT *
FROM   ALL_CONSTRAINTS
WHERE  owner = 'HR'  AND
       table_name = 'EMPLOYEES';


-- Conectar como usu�rio SYS

SELECT *
FROM   DBA_CONSTRAINTS
WHERE  owner = 'HR'  AND
       table_name = 'EMPLOYEES';

-- Consultando informa��es sobre colunas de uma constraint

-- Conectar como usu�rio hr

SELECT *
FROM   USER_CONS_COLUMNS
WHERE  table_name = 'EMPLOYEES'  AND
       constraint_name = 'EMP_EMP_ID_PK'
ORDER BY position;

SELECT *
FROM   ALL_CONS_COLUMNS
WHERE  owner = 'HR' AND 
       table_name = 'EMPLOYEES'  AND
       constraint_name = 'EMP_EMP_ID_PK'
ORDER BY position;

-- Conectar como usu�rio SYS

SELECT *
FROM   DBA_CONS_COLUMNS
WHERE  owner = 'HR' AND 
       table_name = 'EMPLOYEES'  AND
       constraint_name = 'EMP_EMP_ID_PK'
ORDER BY position;

-- Consultando informa��es sobre indices de tabelas

-- Conectar como usu�rio hr

SELECT *
FROM   USER_INDEXES
WHERE  table_name = 'EMPLOYEES';

SELECT *
FROM   ALL_INDEXES
WHERE  owner = 'HR' AND 
       table_name = 'EMPLOYEES';

-- Conectar como usu�rio SYS

SELECT *
FROM   DBA_INDEXES
WHERE  owner = 'HR' AND 
       table_name = 'EMPLOYEES';

-- Consultando informa��es sobre colunas que comp�em indices de tabelas

-- Conectar como usu�rio hr

SELECT *
FROM   USER_IND_COLUMNS
WHERE  table_name = 'EMPLOYEES'  AND
       index_name = 'EMP_EMP_ID_PK';

SELECT *
FROM   ALL_IND_COLUMNS
WHERE  index_owner = 'HR' AND 
       table_name = 'EMPLOYEES'  AND
       index_name = 'EMP_EMP_ID_PK';

-- Conectar como usu�rio SYS

SELECT *
FROM   DBA_IND_COLUMNS
WHERE  index_owner = 'HR' AND 
       table_name = 'EMPLOYEES'  AND
       index_name = 'EMP_EMP_ID_PK';
       
-- Consultando informa��es sobre sequences

-- Conectar como usu�rio hr

SELECT *
FROM   USER_SEQUENCES;

SELECT *
FROM   ALL_SEQUENCES
WHERE  sequence_owner = 'HR';

-- Conectar como usu�rio sys

SELECT *
FROM dba_sequences
WHERE sequence_owner = 'HR';

-- Consultando informa��es sobre views

-- Conectar como usu�rio hr

SELECT *
FROM   USER_VIEWS;

SELECT *
FROM   ALL_VIEWS
WHERE  owner = 'HR';

-- Conectar como usu�rio sys

SELECT *
FROM dba_views
WHERE owner = 'HR';

-- Consultando informa��es sobre o banco de dados

-- Conectar como usu�rio sys

SELECT *
FROM dba_users;

SELECT *
FROM dba_tablespaces;

SELECT * 
FROM dba_data_files;

SELECT * 
FROM dba_temp_files;