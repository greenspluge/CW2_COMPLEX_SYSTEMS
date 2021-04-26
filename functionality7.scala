sqlContext.sql("CREATE DATABASE cw2database").show()
sqlContext.sql("use cw2database").show()
sqlContext.sql("CREATE TABLE places (gPlusPlaceId VARCHAR(100),name VARCHAR(100),price VARCHAR(50),address VARCHAR(100),hours VARCHAR(50),phone VARCHAR(50),closed VARCHAR(100))row format delimited fields terminated by '\t'")
sqlContext.sql("LOAD DATA INPATH '/user/cloudera/CW2/Datasets/places.csv' OVERWRITE INTO TABLE places")
val df = sqlContext.sql("SELECT COUNT(gplusplaceid), closed closed FROM PLACES WHERE closed = 'True' OR closed = 'False' GROUP BY closed").show()
System.exit(0)

