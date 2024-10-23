SELECT a.author_id, a.first_name, a.last_name,
ROUND(AVG(b.price), 2) 
AS average_price
FROM Authors a
JOIN Books b ON a.author_id = b.author_id
GROUP BY a.author_id, a.first_name, a.last_name;