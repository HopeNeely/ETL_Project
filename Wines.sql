--drop employee table 
DROP TABLE winemag;
DROP TABLE winexl;

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

-- Create tables for raw data to be loaded into
CREATE TABLE winexl (
country VARCHAR,
points INT,
price VARCHAR,
province VARCHAR,
title VARCHAR,
variety VARCHAR,
winery VARCHAR
);

--checking data imports
SELECT * FROM newwinemag;
SELECT * FROM winexl;


-- Joins tables
SELECT wine_info.brand, wine_info.first_name, wine_info.last_name, customer_location.address, customer_location.us_state
FROM wine_info
JOIN customer_location
ON customer_name.id = customer_location.id;
