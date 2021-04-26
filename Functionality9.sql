USE cw2database;
SELECT AVG(rating), categories
FROM reviews
Group BY categories
ORDER BY categories ASC;
