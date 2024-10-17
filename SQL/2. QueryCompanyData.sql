-- Question:
/* Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy: 

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, 
total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code. 

Note:
The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. 
For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.*/


-- Code:
SELECT
  c.company_code,
  c.founder_name,
  COUNT(DISTINCT lm.manager_id) AS lead_managers,
  COUNT(DISTINCT sm.manager_id) AS senior_managers,
  COUNT(DISTINCT m.manager_id) AS managers,
  COUNT(DISTINCT e.employee_id) AS employees
FROM
  company AS c
JOIN
  lead_manager AS lm ON c.company_code = lm.company_code
JOIN
  senior_manager AS sm ON c.company_code = sm.company_code
JOIN
  manager AS m ON c.company_code = m.company_code
JOIN
  employee AS e ON c.company_code = e.company_code
GROUP BY
  c.company_code, c.founder_name
ORDER BY
  c.company_code;
