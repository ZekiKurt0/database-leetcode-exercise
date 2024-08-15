
SELECT p.product_name,sum(unit) AS unit 
FROM Orders AS o 
JOIN Products AS p ON o.product_id=p.product_id 
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29' 
GROUP BY product_name HAVING sum(unit)>=100;



