INSERT INTO books VALUES('1','The Great Gatsby','F. Scott Fitzgerald','500','Modernist novel'),
('2','A History of the World','Andrew Marr','800','History'),
('3','A Brief History of Time','Stephen Hawking','500','Science'),
('4','Harry Potter and the Sorcerer’s Stone','J.K. Rowling','600','Fiction'),
('5','The Da Vinci Code','Dan Brown','700','Mystery');

select * from books where price>400;
select * from books where genre IN('History','Science','Fiction');
select * from books where title='The Great Gatsby';
select * from books where author <> 'Dan Brown';
