-- Conectar usu�rio SYS

SELECT username, profile FROM dba_users WHERE username = 'HR';

SELECT * FROM dba_profiles WHERE profile = 'DEFAULT';

-- Remover prazo de expira��o da senha do usu�rio
ALTER PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME UNLIMITED;