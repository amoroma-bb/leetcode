# Write your MySQL query statement below
SELECT c.country_name, (CASE WHEN AVG(w.weather_state) <= 15 THEN 'Cold' 
                        WHEN AVG(w.weather_state) >= 25 THEN 'Hot' 
                        ELSE 'Warm' END) AS weather_type
FROM Weather w
LEFT JOIN Countries c
ON w.country_id = c.country_id
WHERE w.day BETWEEN "2019-11-01" AND "2019-11-30"
GROUP BY c.country_name
