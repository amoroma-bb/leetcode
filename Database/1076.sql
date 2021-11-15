# Write your MySQL query statement below
SELECT project_id
FROM Project
GROUP BY project_id
HAVING COUNT(employee_id) =
  (SELECT COUNT(employee_id) AS nums
  FROM Project
  GROUP BY project_id
  ORDER BY nums DESC
  LIMIT 1) 




-- 2nd solution
# Write your MySQL query statement below
WITH tb1 AS (SELECT project_id, count(1) AS cnt FROM Project GROUP BY project_id)

SELECT project_id
FROM tb1
WHERE cnt = (SELECT MAX(cnt) FROM tb1)  