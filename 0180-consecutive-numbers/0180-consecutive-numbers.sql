
SELECT DISTINCT num AS ConsecutiveNums
FROM (
    SELECT 
        LAG(num) OVER (ORDER BY id) AS prev_num,
        num,
        LEAD(num) OVER (ORDER BY id) AS next_num
    FROM logs
) subquery
WHERE prev_num = num 
  AND num = next_num

