CREATE TABLE IF NOT EXISTS RESTAURANTS (
    NAME TEXT,
    NEIGHBORHOOD TEXT,
    CUISINE TEXT,
    REVIEW REAL,
    PRICE TEXT,
    HEALTH TEXT
);

INSERT INTO RESTAURANTS (NAME, NEIGHBORHOOD, CUISINE, REVIEW, PRICE, HEALTH)
VALUES
('Peter', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
('Jongro', 'Midtown', 'Korean', 3.5, '$$', 'A'),
('Pocha', 'Midtown', 'Pizza', 4.0, '$$$', 'B'),
('Lighthouse', 'Queens', 'Chinese', 3.9, '$', 'A'),
('Minca', 'Downtown', 'American', 4.6, '$$$', ''),
('Marea', 'Chinatown', 'Chinese', 3.0, '$$', ''),
('Dirty Candy', 'Uptown', 'Italian', 4.9, '$$$$', 'B'),
('Di Fara Pizza', 'Brooklyn', 'Pizza', 3.8, '$$', 'A'),
('Golden Unicorn', 'Uptown', 'Italian', 3.8, '$$', 'A');

-- RESTAURANT QUERYS
SELECT DISTINCT NEIGHBORHOOD
FROM RESTAURANTS;

SELECT DISTINCT CUISINE
FROM RESTAURANTS;

SELECT * 
FROM RESTAURANTS 
WHERE CUISINE = 'Chinese';

SELECT *
FROM RESTAURANTS
WHERE REVIEW >= 4.0;

SELECT *
FROM RESTAURANTS
WHERE CUISINE = 'Italian'
    AND PRICE IN ('$$', '$$$');

SELECT *
FROM RESTAURANTS
WHERE PRICE = '$$$';

SELECT *
FROM RESTAURANTS
WHERE NAME LIKE '%Candy%';

SELECT *
FROM RESTAURANTS
WHERE NEIGHBORHOOD IN ('Midtown', 'Downtown', 'Chinatown');

SELECT *
FROM RESTAURANTS
WHERE HEALTH = '' OR HEALTH IS NULL;

SELECT *
FROM RESTAURANTS
ORDER BY REVIEW DESC
LIMIT 4;