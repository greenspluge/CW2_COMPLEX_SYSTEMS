USE cw2database;
Select 'Price range ', price, 'has ',COUNT(rating), 'reviews' from reviews INNER JOIN Places
ON reviews.gplusplaceid = places.gplusplaceid
GROUP BY price
ORDER BY price;
