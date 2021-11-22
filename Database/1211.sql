# Write your MySQL query statement below
SELECT query_name, 
       round(avg(rating/position),2) as quality,
       round(avg(rating < 3)*100, 2) as poor_query_percentage
FROM Queries
Group by query_name


--
# Write your MySQL query statement below
SELECT query_name, 
       round(avg(rating/position),2) as quality,
       round(sum(case when rating <3 then 1 else 0 end)/count(*)*100, 2) as poor_query_percentage
FROM Queries
Group by query_name