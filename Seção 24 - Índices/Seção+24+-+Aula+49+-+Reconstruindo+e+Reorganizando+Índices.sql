--
-- Oracle SQL Avan�ado 
--
-- Se��o 24 - �ndices
--
-- Aula 3 - Reconstruindo e  Reorganizando �ndices

-- Reconstruindo e reorganizando um �ndice

ALTER INDEX employees_last_name_first_name_idx REBUILD;

-- Reconstruindo e reorganizando um �ndice com op��o ONLINE

ALTER INDEX employees_last_name_first_name_idx REBUILD ONLINE;
