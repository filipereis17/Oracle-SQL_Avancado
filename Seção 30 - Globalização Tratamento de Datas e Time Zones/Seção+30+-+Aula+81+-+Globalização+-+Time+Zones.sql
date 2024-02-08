--
-- Oracle SQL Avan�ado 
--
-- Se��o 30 - Globaliza��o Tratamento de Datas e diferentes Time Zones
--
-- Aula 1 - Globaliza��o - Time Zones

-- Globaliza��o - Time Zones

-- Conectar como usu�rio SYS

-- Consultando Time Zones

SELECT *
FROM   v$timezone_names
WHERE  tzname like '%Sao_Paulo%';

SELECT *
FROM   v$timezone_names
WHERE  tzname like '%Brazil%';

SELECT *
FROM   v$timezone_names
WHERE  tzname like '%America%';

SELECT *
FROM   v$timezone_names
WHERE  tzname like '%Manaus%';

SELECT *
FROM   v$timezone_names
WHERE  tzname like '%New_York%';