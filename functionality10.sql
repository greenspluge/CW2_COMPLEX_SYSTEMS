USE cw2database;
SELECT AVG(rating) AS AVGRATING, categories FROM REVIEWS WHERE categories != 'categories' Group BY categories ORDER BY AVGRATING DESC LIMIT 5;
