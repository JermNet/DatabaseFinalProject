SELECT price * quantity AS "total_sales"
FROM Orders
JOIN Books ON Orders.book_id = Books.book_id;