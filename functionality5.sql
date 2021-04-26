USE cw2database;
SELECT reviews.gPlusPlaceId, COUNT(reviews.gPlusPlaceId) FROM reviews GROUP BY reviews.gPlusPlaceId HAVING COUNT(reviews.gPlusPlaceId) > 3;
