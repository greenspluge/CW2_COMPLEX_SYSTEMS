USE cw2database;
SELECT Users.gPlusPlaceId, reviews.reviewText, users.jobs FROM Users INNER JOIN
Reviews ON Users.gPlusPlaceId = Reviews.gPlaceUserId
WHERE jobs = 'IT Specialist';
