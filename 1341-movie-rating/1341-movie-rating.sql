WITH highname AS (
    SELECT TOP 1 u.name AS names 
    FROM MovieRating AS m 
    JOIN Users AS u ON m.user_id = u.user_id 
    GROUP BY u.name 
    ORDER BY COUNT(*) DESC,u.name asc
),
highmovie AS (
    SELECT TOP 1 a.title AS moviename 
    FROM MovieRating AS b 
    JOIN Movies AS a ON a.movie_id = b.movie_id 
    GROUP BY a.title 
    ORDER BY ROUND((SUM(rating) / COUNT(*)), 1) DESC,a.title asc
)
SELECT names AS results FROM highname
UNION ALL
SELECT moviename AS results FROM highmovie;
