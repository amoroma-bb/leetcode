# Write your MySQL query statement below

-- find the most experience years for each project
-- join two tables
-- find the employee_id that match the project_id and experience_years


SELECT p.project_id, p.employee_id
FROM Project p
JOIN Employee e
USING (employee_id)
WHERE (p.project_id, e.experience_years) in
  (SELECT project_id, max(experience_years)
  FROM project
  JOIN employee
  USING(employee_id)
  group by project_id)