SELECT a.author_id, a.first_name, a.last_name
FROM Authors a
LEFT JOIN
Books b ON a.author_id = b.author_id
WHERE b.book_id IS NULL;