#!/bin/bash

Functionality1 () {
 	echo "Running Functionality 1"
	echo "What Rated reviews do you want to look for?"
	read ratinginput
	impala-shell --var=id=$ratinginput -q 'use cw2database; SELECT COUNT(reviews.gplaceuserid) from reviews where rating = ${var:id};'
}
Functionality2 () {
	echo "Running Functionality 2"
	echo "Loading prices"
	impala-shell -f functionality2.sql
}
Functionality3 () {
	echo "Running Functionality 3"
	hive -f functionality3.sql
}
Functionality4 () {
 echo "Running Functionality 4"
}
Functionality5 () {
	echo "Running Functionality 5"
	impala-shell -f functionality5.sql
}
Functionality6 () {
	echo "Running Functionality 6"
	impala-shell -f functionality6.sql
}
Functionality7 () {
	echo "Running Functionality 7"
	sudo -u hdfs hadoop dfsadmin -safemode leave
	hdfs dfs -put /home/cloudera/Datasets /user/cloudera
	spark-shell -i functionality7.scala
}
Functionality8 () {
	echo "Running Functionality 8"
	hdfs dfs -cat /user/cloudera/reviewstext/part-21845
}
Functionality9 () {
	echo "Running Functionality 9"
	impala-shell -f Functionality9.sql
}
Functionality10 () {
	echo "Running Functionality 10"
	impala-shell -f functionality10.sql
}
Functionality11 () {
	echo "Running Functionality 11"
	impala-shell -f Functionality11.sql
}
Functionality12 () {
	echo "Running Functionality 12"
	impala-shell -f Functionality12.sql
}
Functionality13 () {
	echo "Running Functionality 13"
	impala-shell -f Functionality13.sql
}
Functionality14 () {
	echo "Running Functionality 14"
	spark-shell -i Functionality14.scala
}
Functionality15 () {
	echo "Running Functionality 15"
	spark-shell -i Functionality15.scala
}
echo "----------------------------------------------------"
echo "        Welcome to the complex systems cw2          "
echo "                     Main Menu                      "
echo "----------------------------------------------------"
echo "1)Compute the number of reviews in the Reviews dataset that have a rating which is equal to  a user specified value."
echo "2)Compute the number of places in the Places dataset for every price range."
echo "3)Create a subset of the users dataset by keeping only the ‘IT Specialist’ users "
echo "4)Compute the 20 most frequent phrases (i.e., sequence of 3 consecutive words) that appear in the reviewText of reviews that have a rating which is equal to a user specified value."
echo "5)Retrieve all places that have more than 3 reviews"
echo "6)Retrieve all reviews from the Reviews dataset that are written by ‘IT Specialist’ users"
echo "7)Compute the number of places in the Places dataset that are permanently closed (the value of the 'closed' field in the Places dataset is 'True') and the number of places that are still operating (the value of the closed field is 'False')."
echo "8)An inverted document index associates a word with the documents that this word appears. By building an inverted index, a search engine knows all the documents related to a word and thus it can display results back to the user in a straightforward manner."
echo "9)Compute the average rating for each category in the Reviews dataset."
echo "10)Find the top 5 categories in the Reviews dataset that have the highest average rating."
echo "11)Compute the number of places that are still operating (the value of the closed field should be 'False') for every price range."
echo "12)Compute the average rating for each price range."
echo "13)Compute the number of reviews for each price range."
echo "14)Compute the average length (in terms of number of characters) of reviews for each rating."
echo "15)Find the place (id and name) that has received the largest number of reviews."
while :
do
	echo "Please type a functionality to be performed"
	read INPUT
	if [ $INPUT == "1" ]
	then
		Functionality1
	elif [ $INPUT == "2" ]
	then
		Functionality2
	elif [ $INPUT == "3" ]
	then
		Functionality3
	elif [ $INPUT == "4" ]
	then
		Functionality4
	elif [ $INPUT == "5" ]
	then
		Functionality5
	elif [ $INPUT == "6" ]
	then
		Functionality6
	elif [ $INPUT == "7" ]
	then
		Functionality7
	elif [ $INPUT == "8" ]
	then
		Functionality8
	elif [ $INPUT == "9" ]
	then
		Functionality9
	elif [ $INPUT == "10" ]
	then
		Functionality10
	elif [ $INPUT == "11" ]
	then
		Functionality11
	elif [ $INPUT == "12" ]
	then
		Functionality12
	elif [ $INPUT == "13" ]
	then
		Functionality13
	elif [ $INPUT == "14" ]
	then
		Functionality14
	elif [ $INPUT == "15" ]
	then
		Functionality15
	fi


done
