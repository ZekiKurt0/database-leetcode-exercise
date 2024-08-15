WITH highname AS (
    SELECT TOP 1 u.name AS names 
    FROM MovieRating AS m 
    JOIN Users AS u ON m.user_id = u.user_id 
    GROUP BY u.name 
    ORDER BY COUNT(*) DESC,u.name ASC
),
highmovie AS (
    SELECT TOP 1 a.title AS moviename
    FROM MovieRating AS b 
    JOIN Movies AS a ON a.movie_id = b.movie_id
    where b.created_at between '2020-02-01' and '2020-02-29' 
    GROUP BY a.title 
    ORDER BY ROUND((SUM(rating)*1.0 / COUNT(*)*1.0),3) DESC,a.title ASC
)
SELECT names AS results FROM highname
UNION ALL
SELECT moviename AS results FROM highmovie;
