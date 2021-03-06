# Write your MySQL query statement below
WITH c AS(SELECT visited_on, SUM(amount) AS amount
          FROM Customer
          GROUP BY visited_on
        )

SELECT c1.visited_on, SUM(c2.amount) AS amount, ROUND(SUM(c2.amount)/7.0,2) AS average_amount
FROM c c1
LEFT JOIN c c2
    ON DATEDIFF(c1.visited_on, c2.visited_on) <= 6 AND DATEDIFF(c1.visited_on, c2.visited_on) >= 0
GROUP BY c1.visited_on
HAVING COUNT(*) = 7
