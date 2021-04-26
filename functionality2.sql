USE cw2database;
SELECT 'Price range ',price, 'contains ',COUNT(places.gplusplaceid) FROM places GROUP BY price ORDER BY price;

