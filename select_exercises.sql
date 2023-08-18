USE codeup_test_db;
SELECT * FROM albums;

SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre
FROM albums
WHERE name = 'Thriller';

SELECT name
FROM albums
Where release_date BETWEEN 1989 AND 1999;

SELECT name
FROM albums
WHERE sales <= 20.0;

SELECT name
FROM albums
WHERE genre = 'Rock';