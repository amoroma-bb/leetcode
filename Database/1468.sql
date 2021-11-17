# Write your MySQL query statement below
with cte as(
    select company_id,
    (case 
     when max(salary) < 1000 then 0
     when max(salary) between 1000 and 10000 then 24
     when max(salary) > 10000 then 49
     end
    ) as tax
    from Salaries
    group by company_id
)

select s.company_id, s.employee_id, s.employee_name,
        round((salary - (cte.tax/100)*salary),0) as salary
FROM Salaries s, cte
where s.company_id = cte.company_id