-- India's Agricultural Crop Production Analysis
-- SQL Queries

SELECT * FROM crop_production;

-- Total Production
SELECT SUM(Production) AS Total_Production
FROM crop_production;

-- Total Cultivated Area
SELECT SUM(Area) AS Total_Area
FROM crop_production;

-- Top 10 Crops by Production
SELECT Crop, SUM(Production) AS Total_Production
FROM crop_production
GROUP BY Crop
ORDER BY Total_Production DESC
LIMIT 10;

-- Top 10 States by Production
SELECT State_Name, SUM(Production) AS Total_Production
FROM crop_production
GROUP BY State_Name
ORDER BY Total_Production DESC
LIMIT 10;

-- Production by Season
SELECT Season, SUM(Production) AS Total_Production
FROM crop_production
GROUP BY Season;

-- Year-wise Production
SELECT Crop_Year, SUM(Production) AS Total_Production
FROM crop_production
GROUP BY Crop_Year
ORDER BY Crop_Year;

-- Average Production by Crop
SELECT Crop,
AVG(Production) AS Average_Production
FROM crop_production
GROUP BY Crop;

-- Top 10 Districts
SELECT District_Name,
SUM(Production) AS Total_Production
FROM crop_production
GROUP BY District_Name
ORDER BY Total_Production DESC
LIMIT 10;

-- Number of Crops
SELECT COUNT(DISTINCT Crop) AS Total_Crops
FROM crop_production;

-- Number of States
SELECT COUNT(DISTINCT State_Name) AS Total_States
FROM crop_production;
