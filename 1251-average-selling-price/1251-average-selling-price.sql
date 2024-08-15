WITH cte AS (
    SELECT p.product_id,p.price,u.units 
   FROM Prices as p JOIN UnitsSold AS u ON  p.product_id=u.product_id WHERE u.purchase_date BETWEEN p.start_date and p.end_date
) 
SELECT product_id, ROUND((SUM(price*units)*1.0/SUM(units)*1.0),2) AS average_price from cte group by product_id


