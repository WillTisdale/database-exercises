
DROP TABLE IF EXISTS pets;

CREATE TABLE IF NOT EXISTS pets (
    id INT UNSIGNED,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT
);

DESCRIBE pets;

SHOW INDEX FROM pets;

ALTER TABLE pets
    MODIFY COLUMN id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE pets
    MODIFY id INT UNSIGNED;

ALTER TABLE pets
    DROP PRIMARY KEY;

SHOW CREATE TABLE pets;

DROP TABLE pets;

CREATE TABLE IF NOT EXISTS pets (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT,
    UNIQUE unique_pn_on (pet_name, owner_name)
);

DESCRIBE pets;

SHOW INDEX FROM pets;

ALTER TABLE pets
ADD INDEX `pet_name_key` (pet_name);

ALTER TABLE pets
DROP INDEX unique_pn_on;

ALTER TABLE pets
ADD UNIQUE unique_pn_on (pet_name, owner_name);

SHOW CREATE TABLE pets;

INSERT INTO pets(pet_name, owner_name, age)
VALUES ('Skippy', 'Jane Doe', 6),
       ('Scruffy', 'Jane Doe', 4),
       ('Bob', 'Correy', 3);

INSERT INTO owners(name, address)
VALUES ('Jane Doe', '123 Maint St.');

SELECT *
FROM pets;

SELECT *
FROM owners;

UPDATE pets
SET owner_id = 1
WHERE owner_name = 'Jane Doe';

DROP TABLE IF EXISTS owners;

CREATE TABLE IF NOT EXISTS owners (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(255) DEFAULT 'UNKNOWN'
);

DROP TABLE IF EXISTS pets;

CREATE TABLE IF NOT EXISTS pets (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT,
    owner_id INT UNSIGNED,
    UNIQUE unique_pn_on (pet_name, owner_name),
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);

describe owners;
describe pets;

