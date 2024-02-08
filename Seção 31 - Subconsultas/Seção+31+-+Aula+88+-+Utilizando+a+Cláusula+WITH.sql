--
-- Oracle SQL Avan�ado 
--
-- Se��o 31 - Subconsultas 
--
-- Aula 1 - Utilizando a Cl�usula WITH

-- Utilizando a Cl�usula WITH

-- Conectar como usu�rio hr

WITH max_salaries as 
       (SELECT department_id,
               MAX(salary) maximum_salary,
               ROUND(AVG(salary),2) average_salary        
        FROM employees e
        GROUP BY department_id
       )
SELECT e.employee_id, e.salary, e.department_id, max_salaries.maximum_salary, max_salaries.average_salary
FROM   employees e
  JOIN max_salaries ON (e.department_id = max_salaries.department_id);