-- Select nerc_region and the sum of demand_loss_mw for each region.
-- Exclude values where demand_loss_mw is NULL.
-- Group the results by nerc_region.
-- Arrange in descending order of demand_loss.

SELECT 
    nerc_region, 
    SUM(demand_loss_mw) AS demand_loss
FROM 
    grid
WHERE 
    demand_loss_mw IS NOT NULL
GROUP BY
    nerc_region
ORDER BY
    demand_loss ASC

-- Modify the provided query to remove the WHERE clause.
-- Replace it with a HAVING clause so that only results with a total demand_loss_mw of greater than 10000 are returned.
SELECT 
    nerc_region, 
    SUM (demand_loss_mw) AS demand_loss 
FROM 
    grid 
-- Remove the WHERE clause
WHERE 
    demand_loss_mw  IS NOT NULL
GROUP BY 
    nerc_region 
-- Enter a new HAVING clause so that the sum of demand_loss_mw is greater than 10000
HAVING
    SUM(demand_loss_mw) > 10000
ORDER BY 
    demand_loss DESC;

-- Retrieve the minimum and maximum place values
SELECT 
    MIN(place) AS min_place, 
    MAX(place) AS max_place, 
-- Retrieve the minimum and maximum points values
    MIN(points) AS min_points, 
    MAX(points) AS max_points 
FROM 
    eurovision;

-- Retrieve the minimum and maximum place values
SELECT 
    MIN(place) AS min_place, 
    MAX(place) AS max_place, 
    -- Retrieve the minimum and maximum points values
    MIN(points) AS min_points, 
    MAX(points) AS max_points 
FROM 
    eurovision
    -- Group by country
GROUP BY
    country;

-- Obtain a count for each country
SELECT 
  COUNT(country) AS country_count, 
  -- Retrieve the country column
  country, 
  -- Return the average of the Place column 
  AVG(place) AS average_place, 
  AVG(points) AS avg_points, 
  MIN(points) AS min_points, 
  MAX(points) AS max_points 
FROM 
  eurovision 
GROUP BY 
  country;


SELECT 
  country, 
  COUNT (country) AS country_count, 
  AVG (place) AS avg_place, 
  AVG (points) AS avg_points, 
  MIN (points) AS min_points, 
  MAX (points) AS max_points 
FROM 
  eurovision 
GROUP BY 
  country 
  -- The country column should only contain those with a count greater than 5
HAVING 
  COUNT(country) > 5 
  -- Arrange columns in the correct order
ORDER BY 
  avg_place, 
  avg_points DESC;