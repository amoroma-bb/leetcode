# Write your MySQL query statement below
with cte AS(
    SELECT '[0-5>' AS bin, 0 AS min_d, 5*60 AS max_d
    UNION ALL
    SELECT '[5-10>' AS bin, 5*60 AS min_d, 10*60 AS max_d
    UNION ALL
    SELECT '[10-15>' AS bin, 10*60 AS min_d, 15*60 AS max_d
    UNION ALL
    SELECT '15 or more' AS bin, 15*60 AS min_d, 9999999999999 AS max_d
)

SELECT cte.bin, COUNT(duration) AS total
FROM Sessions s
RIGHT JOIN cte 
ON s.duration >= cte.min_d AND s.duration < cte.max_d
GROUP BY cte.bin

--
-- duration/60 < 5 will return True or False, while True = 1
# Write your MySQL query statement below
SELECT '[0-5>' AS 'bin', SUM(duration/60 < 5) AS 'total'
FROM Sessions
UNION
SELECT '[5-10>' AS 'bin', SUM(duration/60 >= 5 AND duration/60 < 10) AS 'total'
FROM Sessions
UNION
SELECT '[10-15>' AS 'bin', SUM(duration/60 >= 10 AND duration/60 < 15) AS 'total'
FROM Sessions
UNION
SELECT '15 or more' AS 'bin', SUM(duration/60 >= 15) AS 'total'
FROM Sessions