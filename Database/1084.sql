# Write your MySQL query statement below
SELECT s.product_id, p.product_name
FROM Sales s
JOIN Product p
USING (product_id)
GROUP BY s.product_id
HAVING MIN(sale_date) >= '2019-01-01' and MAX(sale_date) <= '2019-03-31'