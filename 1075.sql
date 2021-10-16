# Write your MySQL query statement below
SELECT p.project_id, ROUND(SUM(experience_years) / COUNT(employee_id),2) AS average_years
FROM Project p
JOIN Employee e
USING (employee_id)
GROUP BY project_id