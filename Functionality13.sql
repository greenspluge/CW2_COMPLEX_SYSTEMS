USE cw2database;
Select 'price range ',price, 'has ',COUNT(rating), 'reviews' from reviews INNER JOIN Places
ON reviews.gplusplaceid = places.gplusplaceid
GROUP BY places.price;

