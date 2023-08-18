USE codeup_test_db;
SELECT * FROM albums;

SELECT 'All albums in the table' AS 'Info';
SELECT name FROM albums;

UPDATE albums
SET sales = sales * 10;

SELECT 'Albums released before 1980' AS 'Info';
SELECT name
From albums
WHERE release_date < 1980;

UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

SELECT name
FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';


