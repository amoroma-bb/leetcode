# Write your MySQL query statement below
SELECT sale_date, SUM(CASE WHEN fruit = 'oranges' THEN -sold_num ELSE sold_num END) AS diff
FROM Sales
GROUP BY sale_date


-- JOIN
SELECT DISTINCT a.sale_date, (a.sold_num - b.sold_num) AS diff
FROM 
    (
    SELECT sale_date, fruit,sold_num
    FROM Sales
    WHERE fruit = 'apples'
    ) a 
JOIN 
    (
    SELECT sale_date, fruit,sold_num
    FROM Sales
    WHERE fruit = 'oranges'
    ) b 
ON a.sale_date = b.sale_date
