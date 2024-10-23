ALTER TABLE Orders ADD CONSTRAINT customer_for_key FOREIGN KEY
(customer_id) REFERENCES Customers (customer_id);

ALTER TABLE Orders ADD CONSTRAINT book_for_key FOREIGN KEY
(book_id) REFERENCES Books (book_id);