SELECT u.name, ISNULL(SUM(r.distance), 0) as travelled_distance 
FROM Users AS u 
LEFT JOIN Rides AS r ON u.id = r.user_id 
GROUP BY u.name
order by travelled_distance desc,u.name asc ;
