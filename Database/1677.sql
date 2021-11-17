# Write your MySQL query statement below
SELECT p.name, IFNULL(SUM(i.rest),0) as rest, IFNULL(SUM(i.paid),0) as paid, IFNULL(SUM(i.canceled),0) as canceled, IFNULL(SUM(i.refunded),0) as refunded
FROM Product p
LEFT JOIN Invoice i
USING (product_id)
GROUP BY p.name
ORDER BY p.name ASC