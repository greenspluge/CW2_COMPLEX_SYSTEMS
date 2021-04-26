hdfs dfs -put /home/cloudera/Datasets /user/cloudera
hive
CREATE DATABASE cw2database
CREATE TABLE Users (gPlusPlaceId VARCHAR(100),userName VARCHAR(100),jobs VARCHAR(100),currentPlace VARCHAR(100),previousPlace VARCHAR(100),education VARCHAR(100))row format delimited fields terminated by '\t';


CREATE TABLE places (gPlusPlaceId VARCHAR(100),name VARCHAR(100),price VARCHAR(50),address VARCHAR(100),hours VARCHAR(50),phone VARCHAR(50),closed VARCHAR(100))row format delimited fields terminated by '\t';

CREATE TABLE reviews (gPlusPlaceId VARCHAR(100),gPlaceUserId VARCHAR(100),rating FLOAT,reviewerName VARCHAR(100),reviewText string,categories VARCHAR(100),reviewTime VARCHAR(50))row format delimited fields terminated by '\t';

Load the data in to the hive databases:
load data inpath
'/user/cloudera/Datasets/reviews.csv'
into table reviews;

load data inpath
'/user/cloudera/Datasets/places.csv'
into table places;

load data inpath
'/user/cloudera/Datasets/users.csv'
into table users;

From the console then type:
hdfs dfs -put /home/cloudera/Datasets /user/cloudera
spark-shell
sqlContext.sql("USE cw2database CREATE TABLE Users (gPlusPlaceId VARCHAR(100),userName VARCHAR(100),jobs VARCHAR(100),currentPlace VARCHAR(100),previousPlace VARCHAR(100),education VARCHAR(100))row format delimited fields terminated by '\t'")

sqlContext.sql("CREATE TABLE places (gPlusPlaceId VARCHAR(100),name VARCHAR(100),price VARCHAR(50),address VARCHAR(100),hours VARCHAR(50),phone VARCHAR(50),closed VARCHAR(100))row format delimited fields terminated by '\t'")

sqlContext.sql("CREATE TABLE reviews (gPlusPlaceId VARCHAR(100),gPlaceUserId VARCHAR(100),rating FLOAT,reviewerName VARCHAR(100),reviewText string,categories VARCHAR(100),reviewTime VARCHAR(50))row format delimited fields terminated by '\t'")






