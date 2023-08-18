USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'UNKNOWN',
    name VARCHAR(75) DEFAULT 'UNKNOWN',
    release_date INT,
    sales FLOAT UNSIGNED,
    genre VARCHAR(100) DEFAULT 'UNKNOWN',
    PRIMARY KEY(id)
);
