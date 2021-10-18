# Write your MySQL query statement below
SELECT u.name, IFNULL(SUM(r.distance),0) AS travelled_distance
FROM Users u
LEFT JOIN Rides r
ON u.id = r.user_id
GROUP BY r.user_id
ORDER BY travelled_distance DESC, name ASC


-- sub query
# Write your MySQL query statement below
SELECT u.name, (SELECT IFNULL(SUM(r.distance),0) FROM Rides r WHERE r.user_id = u.id) AS travelled_distance
FROM Users u
ORDER BY travelled_distance DESC, name ASC