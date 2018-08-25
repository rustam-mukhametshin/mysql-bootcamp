-- Solution 1
-- 0, 1, 0 (0, 1)

-- Solution 2
SELECT title, released_year
FROM books
WHERE released_year < 1980
;

-- Solution 3
SELECT title, author_lname
FROM books
WHERE author_lname = 'Eggers' OR
author_lname = 'Chabon'
;

-- Solution 4
SELECT title, author_lname, released_year
FROM books
WHERE author_lname = 'Lahiri' AND
released_year > 2000
;

-- Solution 5
SELECT title, pages
FROM books
WHERE pages BETWEEN 100 AND 200;

-- Solution 6
SELECT author_lname
FROM books
WHERE author_lname LIKE 'C%'
OR author_lname LIKE 'S%';

-- Solution 7
SELECT title, author_lname,
  CASE
    WHEN title LIKE '%stories%' THEN 'Short Stories'
    WHEN title LIKE '%just kids%' THEN 'Memoir'
    WHEN title LIKE '%a heartbreaking work%' THEN 'Memoir'
    ELSE 'Novel'
  END AS 'TYPE'
FROM books
;