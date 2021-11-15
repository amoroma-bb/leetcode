# Write your MySQL query statement below
-- Join two tables 
-- use whre clause to find the right date 
-- group by product name to sum the unit 
-- last unit >= 100

SELECT p.product_name, sum(o.unit) as unit
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id
WHERE LEFT(o.order_date,7) = '2020-02'
GROUP BY p.product_name
HAVING unit >= 100