USE cw2database;
Select 'Price range ', price, 'contains ',COUNT(name), 'places' from places
WHERE closed = 'False'
GROUP BY price;
