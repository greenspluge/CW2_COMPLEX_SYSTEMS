sqlContext.sql("CREATE DATABASE cw2database").show()
sqlContext.sql("use cw2database").show()
sqlContext.sql("CREATE TABLE reviews (gPlusPlaceId VARCHAR(100),gPlaceUserId VARCHAR(100),rating FLOAT,reviewerName VARCHAR(100),reviewText string,categories VARCHAR(100),reviewTime VARCHAR(50))row format delimited fields terminated by '\t'")
val df = sqlContext.sql("SELECT rating as rating, AVG(length(reviewtext)) FROM reviews WHERE rating > 0  GROUP BY rating order by rating").show()
System.exit(0)
