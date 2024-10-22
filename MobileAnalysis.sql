CREATE DATABASE MobileSalesAnalysis;
#info: Creates a new database named 'MobileSalesAnalysis' 

USE MobileSalesAnalysis;
#info: Selects the 'MobileSalesAnalysis' database for subsequent queries

SELECT * FROM `mobile analysis`;
#info: Selects all columns from the 'mobile analysis' table in the current database

DESCRIBE `mobile analysis`;
#info: Shows the structure of the 'mobile analysis' table

SHOW COLUMNS FROM `mobile analysis`;
#info: Displays column details from the 'mobile analysis' table

ALTER TABLE `mobile analysis` RENAME TO Mobile;
#info: Renames the table 'mobile analysis' to 'Mobile'

------------ #Check Mobile features and Price List.
SELECT Phone_name, Price FROM Mobile order by Price;
#info: Selects 'Phone_name' and 'Price' columns from the 'Mobile' table

--------- #Find out the Price of the 5 most expensive phones.
SELECT Phone_name, Price 
FROM Mobile
ORDER BY Price DESC 
LIMIT 5;
#info: Retrieves 'Phone_name' and 'Price' for the 5 most expensive phones, sorted in descending order of price

-------- # Find out the Price of the 5 cheapest phones.
SELECT Phone_name, Price 
FROM Mobile
ORDER BY Price ASC 
LIMIT 5;
#info: Retrieves 'Phone_name' and 'Price' for the 5 cheapest phones, sorted in ascending order of price

-----------# List of top 5 Samsung phones with price and all features.
SELECT * 
FROM Mobile 
WHERE Brands = 'Samsung' 
ORDER BY Price DESC 
LIMIT 5;
#info: Retrieves all features of the top 5 Samsung phones, sorted by price in descending order

---------------# Must have Android phone list then top 5 High Price android phones
#Step 1: List all Android phones
SELECT * 
FROM Mobile 
WHERE Operating_System_Type = 'Android';
#info: Retrieves all features of phones that use the Android operating system

#Step 2: Find the top 5 highest-priced Android phones
SELECT * 
FROM Mobile 
WHERE Operating_System_Type = 'Android' 
ORDER BY Price DESC 
LIMIT 5;
#info: Retrieves all features of the top 5 highest-priced Android phones, sorted by price in descending order

---------------# Must have Android phone list then top 5 lower price Android phones.
# Step 1: List all Android phones
SELECT * 
FROM Mobile 
WHERE Operating_System_Type = 'Android';
#info: Retrieves all features of phones that use the Android operating system

#Step 2: Find the top 5 lowest-priced Android phones
SELECT * 
FROM Mobile 
WHERE Operating_System_Type = 'Android' 
ORDER BY Price ASC 
LIMIT 5;
#info: Retrieves all features of the top 5 lowest-priced Android phones, sorted by price in ascending order


# Top 5 IOS high price phone
SELECT * 
FROM Mobile 
WHERE Operating_System_Type = 'iOS' 
ORDER BY Price DESC 
LIMIT 5;
#info: Retrieves all features of the top 5 highest-priced iOS phones, sorted by price in descending order

# Top 5 IOS lower price phone
SELECT * 
FROM Mobile 
WHERE Operating_System_Type = 'iOS' 
ORDER BY Price ASC 
LIMIT 5;
#info: Retrieves all features of the top 5 lowest-priced iOS phones, sorted by price in ascending order

#Write query  which phone support 5g and also top 5 phone with 5g support
# tep 1: List all phones that support 5G
SELECT * 
FROM Mobile 
WHERE 5G_Availability = 'Yes';
#info: Retrieves all features of phones that support 5G connectivity

#Step 2: Find the top 5 highest-priced phones that support 5G
SELECT * 
FROM Mobile 
WHERE 5G_Availability = 'Yes' 
ORDER BY Price DESC 
LIMIT 5;
#info: Retrieves all features of the top 5 highest-priced phones that support 5G, sorted by price in descending order

#Total Price of all mobiles is to be found with brand name 
SELECT Brands, SUM(Price) AS Total_Price
FROM Mobile
GROUP BY Brands
ORDER BY Total_Price DESC;
#info: Retrieves the total price of all mobiles for each brand, grouped by brand name, and sorted by total price in descending order
















