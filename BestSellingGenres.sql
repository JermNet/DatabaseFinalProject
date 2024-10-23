SELECT b.genre, SUM(o.quantity) AS amount_sold
FROM Books b
JOIN Orders o ON b.book_id = o.book_id
GROUP BY b.genre
ORDER BY amount_sold DESC LIMIT 3;