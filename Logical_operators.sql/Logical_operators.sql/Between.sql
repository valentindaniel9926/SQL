SELECT title,released_year FROM books WHERE released_year>=2004 && released_year<=2015;

SELECT title,released_year FROM books WHERE released_year BETWEEN 2004 AND 2015;


SELECT title,released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015 ORDER BY released_year;

SELECT name, birthdt FROM books 
WHERE birthdt BETWEEN CAST('1980-01-01' AS DATETIME)
    AND CAST('2000-01-01' AS DATETIME);