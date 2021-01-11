USE codeup_test_db;

SELECT '' AS 'Released After 1991';

DELETE
FROM albums
WHERE
    release_date > 1991;

SELECT '' AS 'Disco Genre';

DELETE
FROM albums
WHERE
    genre = 'disco';

SELECT '' AS 'Whitney Houston Albums';

DELETE
FROM albums
WHERE
    artist = 'Whitney Houston / Various Artists';

SELECT *
FROM albums;
