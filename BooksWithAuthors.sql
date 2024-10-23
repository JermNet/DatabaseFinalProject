SELECT title, first_name, last_name 
FROM Books, Authors 
WHERE Books.author_id = Authors.author_id;