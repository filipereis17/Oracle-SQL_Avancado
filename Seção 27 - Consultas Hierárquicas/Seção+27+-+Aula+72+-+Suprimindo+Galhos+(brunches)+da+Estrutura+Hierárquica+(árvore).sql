--
-- Oracle SQL Avan�ado 
--
-- Se��o 27 - Consultas Hier�rquicas
--
-- Aula 5 - Suprimindo Galhos (brunches) da Estrutura Hier�rquica (�rvore)
--

-- Consultas Hier�rquicas

-- Conectar como HR

-- Suprimindo Galhos (brunches) da Estrutura Hier�rquica (�rvore)

-- Utilizando a Cl�usula WHERE – Elimina as linhas (registros) que n�o satisfazem a cl�usula WHERE

SELECT     LEVEL, employee_id, first_name, last_name, job_id, manager_id
FROM       employees
WHERE      employee_id <> 205
START WITH manager_id IS NULL
CONNECT BY PRIOR employee_id = manager_id;

-- Comentando a cl�usula WHERE

SELECT     LEVEL, employee_id, first_name, last_name, job_id, manager_id
FROM       employees
--WHERE      employee_id <> 205
START WITH manager_id IS NULL
CONNECT BY PRIOR employee_id = manager_id;

-- Suprimindo Galhos (brunches) da Estrutura Hier�rquica (�rvore)

-- Utilizado a Cl�usula Connect By - Elimina as linhas (registros) que n�o satisfazem a cl�usula WHERE e todos suas linhas (registros) filhos

SELECT     LEVEL, employee_id, first_name, last_name, job_id, manager_id
FROM       employees
START WITH manager_id IS NULL
CONNECT BY PRIOR employee_id = manager_id AND 
                 employee_id <> 205;