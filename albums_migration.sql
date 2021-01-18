USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(255) NOT NULL DEFAULT 'Unknown',
    name VARCHAR(255) NOT NULL DEFAULT 'Untitled',
    release_date INT UNSIGNED,
    sales FLOAT UNSIGNED,
    genre VARCHAR(100),
    PRIMARY KEY (id)
);

USE practice_db;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    password CHAR(15) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    zip_code CHAR(15) DEFAULT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(255),
    description TEXT,
    category VARCHAR(100),
    user_id INT UNSIGNED,
    PRIMARY KEY(id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE ad_category (
  ad_id INT UNSIGNED,
  category_id INT UNSIGNED,
  FOREIGN KEY (ad_id) REFERENCES ads (id),
  FOREIGN KEY (category_id) REFERENCES categories (id)
);

SELECT u.email
FROM users u
JOIN ads a ON u.id = a.user_id
WHERE a.id IN (
    SELECT id
    FROM ads
    WHERE title = 'Fishing Pole for Sale');

