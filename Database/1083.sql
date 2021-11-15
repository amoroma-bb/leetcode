# Write your MySQL query statement below
-- GROUP BY buyer_id
-- For each buyer the sum of S8 should > 0 and sum of iPhone shoule be 0

SELECT s.buyer_id
FROM Sales s
JOIN Product p
ON s.product_id = p.product_id
GROUP BY s.buyer_id
HAVING SUM(p.product_name = 'S8') >0 and SUM(p.product_name = 'iPhone') = 0