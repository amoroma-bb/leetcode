# Write your MySQL query statement below
-- the distinct product_key number should equal to the all product if the customer buy all product
SELECT customer_id
FROM Customer c
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(product_key) FROM Product)