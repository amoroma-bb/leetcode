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