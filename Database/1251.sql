# Write your MySQL query statement below
SELECT p.product_id, round(sum(u.units*p.price)/sum(u.units),2) as average_price
FROM Prices p
JOIN UnitsSold u
WHERE p.product_id = u.product_id AND u.purchase_date >= p.start_date and u.purchase_date <= p.end_date
GROUP BY p.product_id