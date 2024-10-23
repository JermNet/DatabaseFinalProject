UPDATE Books
SET price = price * 1.10
WHERE genre = "Comedy";
SELECT * FROM Books;