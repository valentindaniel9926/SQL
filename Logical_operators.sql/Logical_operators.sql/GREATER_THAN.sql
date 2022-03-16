SELECT * FROM books WHERE released_year>2000; 

SELECT title,released_year FROM books WHERE released_year>=2000 ORDER BY released_year; 

SELECT title,stock_quantity FROM books WHERE stock_quantity>=100; 

SELECT title, author_lname FROM books WHERE author_lname = 'Eggers';
 
SELECT title, author_lname FROM books WHERE author_lname = 'eggers';