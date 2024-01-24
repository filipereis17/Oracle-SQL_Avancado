-- Conectar usuário SYS

SELECT username, profile FROM dba_users WHERE username = 'HR';

SELECT * FROM dba_profiles WHERE profile = 'DEFAULT';

-- Remover prazo de expiração da senha do usuário
ALTER PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME UNLIMITED;