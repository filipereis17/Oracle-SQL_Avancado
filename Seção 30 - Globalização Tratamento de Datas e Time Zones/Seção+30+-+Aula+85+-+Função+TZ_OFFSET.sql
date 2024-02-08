--
-- Oracle SQL Avan�ado 
--
-- Se��o 30 - Globaliza��o Tratamento de Datas e diferentes Time Zones
--
-- Aula 5 - Fun��o TZ_OFFSET

-- Conectar como usu�rio SYS

-- Alterar a UTC do banco de dados 

-- Conectar como usuario SYS 

ALTER DATABASE SET TIME_ZONE='+00:00'; 

-- Shutdown da Instancia
-- Startup da Instancia

-- DBTIMEZONE - Retorna a UTC do banco de dados

SELECT DBTIMEZONE
FROM dual;

SELECT SESSIONTIMEZONE
FROM dual;

-- Fun��o TZ_OFFSET

SELECT TZ_OFFSET(DBTIMEZONE)
FROM dual;

SELECT TZ_OFFSET(SESSIONTIMEZONE)
FROM dual;

SELECT *
FROM   V$timezone_names
WHERE  tzname like '%New_York%';

SELECT TZ_OFFSET('America/New_York')
FROM dual;

SELECT *
FROM   V$timezone_names
WHERE  tzname like '%Paris%';

SELECT TZ_OFFSET('Europe/Paris')
FROM   dual;




