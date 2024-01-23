--
-- Oracle SQL Avan�ado 
--
-- Se��o 25 - Manipula��o de Dados Avan�ada
--
-- Aula 1 - Utilizando a op��o DEFAULT nos comandos INSERT ou UPDATE

-- Utilizando a op��o DEFAULT nos comandos INSERT ou UPDATE

-- Conectar como usu�rio HR

-- Criando uma Tabela com a op��o DEFAULT para uma coluna

DROP TABLE projects;

CREATE TABLE projects
(project_id    NUMBER(6)  NOT NULL,
 project_code  VARCHAR2(10) NOT NULL,
 project_name  VARCHAR2(100) NOT NULL,
 CREATION_DATE DATE DEFAULT sysdate NOT NULL,
 START_DATE    DATE,
 END_DATE      DATE,
 STATUS        VARCHAR2(20) NOT NULL,
 PRIORITY      VARCHAR2(10)  NOT NULL,
 BUDGET        NUMBER(11,2) NOT NULL,
 DESCRIPTION   VARCHAR2(400) NOT NULL);
 
 -- Utilizando a palavra chave (keyword) DEFAULT para o valor de uma coluna
 
 INSERT INTO projects (project_id, project_code, project_name, creation_date, status, priority, budget, description)
 VALUES (1, 'PROJERP001', 'Oracle ERP', default, 'PLANNING', 'HIGH', 1000000, 'Implanta��o do Oracle ERP');
 
 COMMIT;
 
 -- Consultando a Tabela 
 
 SELECT *
 FROM projects;