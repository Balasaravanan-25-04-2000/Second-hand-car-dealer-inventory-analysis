USE bala_db1;
-- 1 READ DATA
SELECT * FROM car_dekho;

-- 2 TOTAL CARS
SELECT COUNT(*) AS Total_cars
FROM car_dekho;

-- 3 QUESTION - CARS AVAILABLE IN 2023
SELECT COUNT(*) AS Total_cars_2023
FROM car_dekho
WHERE year = 2023;

-- 4 QUESTION - CARS AVAILABLE IN 2020, 2021, 2022
SELECT COUNT(*) AS Total_cars_2020
FROM car_dekho
WHERE year = 2020; #74
SELECT COUNT(*) AS Total_cars_2021
FROM car_dekho
WHERE year = 2021; #7
SELECT COUNT(*) AS Total_cars_2022
FROM car_dekho
WHERE year = 2022; #7

SELECT year, COUNT(*) Cars_available
FROM car_dekho
GROUP BY year
HAVING year in (2020,2021,2022)
ORDER BY year;

-- 5 QUESTION  - Total number of cars by year
SELECT year, COUNT(*) Car_count
FROM car_dekho
GROUP BY year
ORDER BY year;

-- 6 QUESTION - How many Diesel cars available in 2020
SELECT year, fuel, COUNT(*) Car_count
FROM car_dekho
WHERE fuel = "Diesel" AND year = "2020";

-- 7 QUESTION - How many Petrol cars available in 2019
SELECT year, fuel, COUNT(*) Car_count
FROM car_dekho
WHERE fuel = "Petrol" AND year = "2019";

-- 8 QUESTION - List of cars which runs by fuel (Petrol, Diesel and CNG)
SELECT * FROM car_dekho
WHERE fuel IN ("Petrol", "Diesel", "CNG")
ORDER BY year;

-- 9 QUESTION - Count of cars which runs by fuel (Petrol, Diesel and CNG)
SELECT year, COUNT(*)
FROM car_dekho
WHERE fuel IN ("Petrol", "Diesel", "CNG")
GROUP BY year
ORDER BY year;

-- 10 QUESTION - Which year had more than 100 cars?
SELECT year, COUNT(*) AS Car_count
FROM car_dekho
GROUP BY year
HAVING Car_count > 100
ORDER BY year;

-- 11 QUESTION - Which year had less than 50 cars?
SELECT year, COUNT(*) AS Car_count
FROM car_dekho
GROUP BY year
HAVING Car_count < 50
ORDER BY year;

-- 12 QUESTION - Count of all cars between 2015 and 2023 for each year
SELECT year, COUNT(*) AS Car_count
FROM car_dekho
GROUP BY year
HAVING year BETWEEN 2015 AND 2023
ORDER BY year;

-- 13 QUESTION - Total Count of all cars between 2015 and 2023
SELECT COUNT(*) AS Car_count
FROM car_dekho
WHERE year BETWEEN 2015 AND 2023;

-- 14 QUESTION - List of all cars between 2015 and 2023
SELECT year, Name
FROM car_dekho
WHERE year BETWEEN 2015 AND 2023
ORDER BY year;