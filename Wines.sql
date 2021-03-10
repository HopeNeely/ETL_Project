--drop employee table 
DROP TABLE winemag;
DROP TABLE winexl;
DROP TABLE wines_by_state;
DROP TABLE wine_reviews;

-- Create tables for raw data to be loaded into
CREATE TABLE newwinemag (
country VARCHAR,
description VARCHAR,
points VARCHAR,
price VARCHAR,
province VARCHAR,
variety VARCHAR,
winery VARCHAR
);

CREATE TABLE winexl (
country VARCHAR,
points INT,
price VARCHAR,
province VARCHAR,
title VARCHAR,
variety VARCHAR,
winery VARCHAR
);

insert into winemag(country,description,designation,points,price,province,variety,winery) 
values ('Germany','forgien counrty','not found',99, 10,'Bordeaux','Pinto','ChÃ¢teau Mouton Rothschild');

CREATE TABLE wine_info (
Vintage VARCHAR,
Country VARCHAR,
County VARCHAR,
Designation VARCHAR,
Points INT,
Price VARCHAR,
Province VARCHAR,
Title VARCHAR,
Variety VARCHAR,
Winery VARCHAR
);

-- Create tables for raw data to be loaded into
CREATE TABLE wine_reviews (
brand VARCHAR,
manufacturerNumber VARCHAR,
winename VARCHAR,
reviewsdate VARCHAR,
reviewsrating VARCHAR,
reviewstext VARCHAR,
reviewstitle VARCHAR,
reviewsusername VARCHAR
);

Select
	country,
	points,
	price,
	province,
	title,
	variety,
	winery
	
From wine_info
	

--checking data imports
SELECT * FROM newwinemag;
SELECT * FROM winexl;
SELECT * FROM  wine_reviews;
SELECT * FROM wines_by_state_fifteen;
SELECT * FROM wines_by_state_seven;

-- Create tables for raw data to be loaded into
CREATE TABLE wines_by_state_fifteen (
usstate VARCHAR,
wines VARCHAR,
specialwines VARCHAR,
specialwinestaxable VARCHAR
);

-- Create tables for raw data to be loaded into
CREATE TABLE wines_by_state_seven (
usstate VARCHAR,
wines VARCHAR,
specialwines VARCHAR,
specialwinestaxable VARCHAR
);

-- Joins tables
SELECT wine_info.brand, wine_info.first_name, wine_info.last_name, customer_location.address, customer_location.us_state
FROM wine_info
JOIN customer_location
ON customer_name.id = customer_location.id;
