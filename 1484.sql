# Write your MySQL query statement below
-- MySQL GROUP_CONCAT() function returns a string with concatenated non-NULL value from a group.

Returns NULL when there are no non-NULL values.

SELECT sell_date,
        COUNT(DISTINCT product) AS num_sold,
        GROUP_CONCAT(DISTINCT product) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date