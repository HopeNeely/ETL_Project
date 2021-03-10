--drop employee table 
DROP TABLE winemag;
DROP TABLE wine_info;

-- Create tables for raw data to be loaded into
CREATE TABLE winemag (
country VARCHAR,
description VARCHAR,
points VARCHAR,
price VARCHAR,
province VARCHAR,
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

--checking data imports
SELECT * FROM winemag;
SELECT * FROM wine_info;

-- Joins tables
SELECT wine_info.id, wine_info.first_name, wine_info.last_name, customer_location.address, customer_location.us_state
FROM wine_info
JOIN customer_location
ON customer_name.id = customer_location.id;
