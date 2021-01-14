USE codeup_test_db;

show tables;

show create table albums;

ALTER TABLE albums
ADD UNIQUE unique_art_alb (artist, name);

show index from albums;

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Michael Jackson', 'Thriller', 1982, 'Pop, Rock, R&B', 47.3);