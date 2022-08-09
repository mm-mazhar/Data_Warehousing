--Task 5
-- Create Dimensional Tables
CREATE TABLE MyDimDate (
   date_id INT NOT NULL PRIMARY KEY,
   date_ DATE NOT NULL,
   year INT NOT NULL,
   quarter VARCHAR(2) NOT NULL,
   month INT NOT NULL,
   monthname VARCHAR(20) NOT NULL,
   day INT NOT NULL,
   weekday_ VARCHAR(20) NOT NULL
);

--Task 6
-- Create Table(s) MyDimWaste 
CREATE TABLE MyDimWaste (
   waste_id INT NOT NULL PRIMARY KEY,
   waste_type VARCHAR(20) NOT NULL
);


--Task 7
-- Create Table(s) MyDimZone 
CREATE TABLE MyDimZone (
   zone_id INT NOT NULL PRIMARY KEY,
   zone_name VARCHAR(10) NOT NULL,
   city VARCHAR(50) NOT NULL
);


--Task 8
-- Create Fact Table(s) 
CREATE TABLE MyFactTrips (
   trip_number INT NOT NULL PRIMARY KEY,
   waste_id INT NOT NULL REFERENCES MyDimWaste (waste_id),
   zone_id INT NOT NULL REFERENCES MyDimZone (zone_id),
   date_id INT NOT NULL REFERENCES MyDimDate (date_id),
   waste_in_tons NUMERIC(5, 2) NOT NULL
);
