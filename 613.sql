# Write your MySQL query statement below
-- JOIN point twice and exclude the x equal, so the diff is x to the rest, then find the min

SELECT MIN(ABS(a.x-b.x)) AS shortest
FROM point a 
JOIN point b
ON a.x != b.x