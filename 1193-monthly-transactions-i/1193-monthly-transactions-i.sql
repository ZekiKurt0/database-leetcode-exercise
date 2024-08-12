SELECT 
    CONCAT(YEAR(trans_date), '-', RIGHT('0' + CAST(MONTH(trans_date) AS VARCHAR(2)), 2)) AS month,
    country,
    COUNT(*) AS trans_count,
    SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY YEAR(trans_date), MONTH(trans_date), country
ORDER BY country DESC;
