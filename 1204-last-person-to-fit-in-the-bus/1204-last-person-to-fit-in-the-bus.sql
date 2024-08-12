SELECT TOP 1 person_name FROM(SELECT person_name, turn, SUM(weight) OVER(ORDER BY turn) as total_weight FROM Queue) AS result
WHERE total_weight<=1000
ORDER BY total_weight DESC; 