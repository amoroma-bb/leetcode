# Write your MySQL query statement below
SELECT tmp.person_name
FROM
  (select person_name, weight, turn, sum(weight) over(order by turn) as cum_sum
  from queue) tmp
WHERE tmp.cum_sum <= 1000
ORDER BY turn DESC
LIMIT 1