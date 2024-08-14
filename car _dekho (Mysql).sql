CREATE SCHEMA cars;
USE cars;
--READ DATA--
SELECT*FROM car_dekho;
--Total Cars: To get a count of records--
SELECT count(*)FROM car_dekho; 
-- The manager asked the employee How many cars will be available in 2023?--
SELECT count(*) From car_dekho where year = 2023; 
-- The manager asked the employee How many cars will be available in 2020,2021,2022?--
 SELECT count(*) From car_dekho where year = 2020; #74
 SELECT count(*) From car_dekho where year = 2021; #7 
 SELECT count(*) From car_dekho where year = 2022; #7
 --Group BY--
 SELECT count(*) FROM car_dekho where year in (2020,2021,2022) group by year
--client asked me to print the total of all cars by year. I don't see all the details--
SELECT year, count(*) FROM car_dekho group by year; 
--client asked to car dealer agent How many diesel cars will there be in 2020?--
SELECT count(*) FROm car_dekho  where year = 2020 and fuel = "diesel";
--client requsted a car dealer agent How many petrol cars will there be in 2020?--
SELECT count(*) FROm car_dekho  where year = 2020 and fuel = "petrol"; #51 
--The manger told the employee to give a print all the fuel cars (Petrol, diesel,and CNG ) come by all year?--
SELECT year, count(*) FROM car_dekho where fuel = "Petrol" group by year; 
SELECT year, count(*) FROm car_dekho where fuel = "Diesel" group by year;
SELECT year, count(*) FROm car_dekho where fuel = "CNG" group by year;
--Manager said there where more than 100 cars in a given year ,which year had more than 100 cars?--
SELECT year, COUNT(*) FROM car_dekho GROUP BY year HAVING COUNT(*) > 100; 
SELECT year, COUNT(*) FROM car_dekho GROUP BY year HAVING COUNT(*) < 50;
--The manager said to the empolyee all cars count details between 2025 and 2023 we need a complete lis?--
SELECT count(*) FROM car_dekho where year between 2015 and 2023;
--The manager said to the employee all cars details between 2025 to 2023 we need complete lis?--
SELECT *FROM car_dekho where year between 2015 and 2023;

