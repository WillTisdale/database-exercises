USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS 'Number 1';

SELECT name
FROM albums
WHERE
    artist = 'PINK FLOYD';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Number 2';

SELECT release_date
FROM albums
WHERE
    name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS 'Number 3';

SELECT genre
FROM albums
WHERE
    name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS 'Number 4';

SELECT *
FROM albums
WHERE
    release_date BETWEEN 1990 AND 1999;

SELECT 'Which albums had less than 20 million certified sales' AS 'Number 5';

SELECT *
FROM albums
WHERE
    sales < 20;

SELECT 'All the albums with a genre of "Rock"' AS 'Number 6';

SELECT *
FROM albums
WHERE
    genre = 'Rock';