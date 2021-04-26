sqlContext.sql("CREATE DATABASE cw2database").show()
sqlContext.sql("use cw2database").show()
sqlContext.sql("CREATE TABLE reviews (gPlusPlaceId VARCHAR(100),gPlaceUserId VARCHAR(100),rating FLOAT,reviewerName VARCHAR(100),reviewText string,categories VARCHAR(100),reviewTime VARCHAR(50))row format delimited fields terminated by '\t'")
sqlContext.sql("LOAD DATA INPATH '/user/cloudera/CW2/Datasets/reviews.csv' OVERWRITE INTO TABLE reviews")
val df = sqlContext.sql("SELECT gplusplaceid, gplaceuserid, reviewtext FROM reviews")
val numrows = df.count()
df.repartition(numrows.toInt).rdd.saveAsTextFile("/user/cloudera/reviewstext/")
System.exit(0)



