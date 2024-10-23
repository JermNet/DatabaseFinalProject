
CREATE TABLE Books (
  book_id INT,
  title VARCHAR(100),
  author_id INT,
  genre  VARCHAR(50),
  price DECIMAL(5,2),
  PRIMARY KEY (book_id),
  KEY author_for_key (author_id),
  CONSTRAINT author_for_key FOREIGN KEY (author_id) REFERENCES authors (author_id)
) 