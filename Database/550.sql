# Write your MySQL query statement below
SELECT ROUND(SUM(CASE WHEN tmp.min_date + 1 = a.event_date THEN 1 ELSE 0 END)/COUNT(DISTINCT a.player_id),2) AS fraction
FROM
  (SELECT player_id, MIN(event_date) AS min_date
  FROM Activity
  GROUP BY player_id) as tmp
JOIN Activity a
ON a.player_id = tmp.player_id
 