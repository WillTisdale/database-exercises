USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED AUTO_INCREMENT,
    PRIMARY KEY (id),
    artist VARCHAR(255),
    name VARCHAR(255),
    release_date INT,
    sales INT,
    genre VARCHAR(255)
);