SELECT c.first_name, c.last_name FROM Customers c
JOIN Orders o ON o.customer_id = c.customer_id
GROUP BY c.first_name, c.last_name
HAVING COUNT(o.order_id) > 1;