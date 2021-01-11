USE codeup_test_db;

SELECT '' AS 'All Albums';

SELECT * FROM albums;

UPDATE albums
SET sales = (sales * 10);

SELECT '' AS 'All Albums W/ Sales * 10';

SELECT *
FROM albums;

SELECT '' AS 'All Albums Released Before 1980';

SELECT *
FROM albums
WHERE
    release_date < 1980;

UPDATE albums
SET release_date = (release_date - 100)
WHERE
    release_date < 1980;

SELECT '' AS 'All Albums Released Before 1880';

SELECT *
FROM albums
WHERE
    release_date < 1880;

SELECT '' AS 'All Michael Jackson Albums';

SELECT *
FROM albums
WHERE
    artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE
    artist = 'Michael Jackson';

SELECT '' AS 'All Peter Jackson Albums';

SELECT *
FROM albums
WHERE
    artist = 'Peter Jackson';
