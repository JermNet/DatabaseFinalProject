/* Normalization: There seems to be no issue in the 1NF front, 
every row has a combination of columns that make it unique and
every row has an in ID field which can uniquely identify the 
row. The only change that needs to be made is that "author name"
should be changed to "first_name" and "last_name" which I will do
in this file. In terms of second normal form, everything seems to
be in order. Each field that is not the primary key is determined 
by the primary key, take orders for example. If the primary key is 1
the all the other information is connected to that. There's a reason
there's so many ids haha! I believe that everything is in order for 3NF
as well since, there's nothing where A determines B and B deterimines C so
A determines C so everything should be good.*/
ALTER TABLE Authors
ADD COLUMN first_name VARCHAR(50),
ADD COLUMN last_name VARCHAR(50);

UPDATE Authors SET
/* Uses the space between the names as a delimiter to turn the 
author_name into first_name and last_name */
first_name = SUBSTRING_INDEX(author_name, ' ', 1), 
last_name = SUBSTRING_INDEX(author_name, ' ', -1);

ALTER TABLE Authors DROP COLUMN author_name;