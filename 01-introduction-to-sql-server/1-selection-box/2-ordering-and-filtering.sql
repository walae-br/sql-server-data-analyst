-- Select the first 5 rows from the specified columns
SELECT 
    TOP(5) description, 
    event_date
FROM 
    grid
-- Order your results by the event_date column
ORDER BY 
    event_date;


-- Select the top 20 rows from description, nerc_region and event_date
SELECT 
    TOP(20) [description], 
    nerc_region, 
    event_date
FROM 
    grid
-- Order by nerc_region, affected_customers & event_date
-- Event_date should be in descending order
ORDER BY 
    nerc_region, 
    affected_customers, 
    event_date DESC;


-- Select description and event_year
SELECT 
    [description], 
        event_year
FROM 
    grid
-- Filter the results
WHERE 
    [description] = 'Vandalism';


-- Select nerc_region and demand_loss_mw
SELECT 
    nerc_region, demand_loss_mw
FROM 
    grid
-- Retrieve rows where affected_customers is >= 500000
WHERE 
    affected_customers >= 500000;


-- Select description and affected customers
SELECT 
    [description], affected_customers
FROM 
    grid
-- Retrieve rows where the event_date was the 22nd December, 2013
WHERE 
    event_date = '2013-12-22';


-- Select description, affected_customers and event date
SELECT 
    [description], 
    affected_customers, 
    event_date
FROM 
    grid
-- The affected_customers column should be >= 50000 and <=150000
-- Define the order
WHERE 
    affected_customers BETWEEN 50000 AND 150000
ORDER BY 
    event_date;


-- Retrieve all columns
SELECT 
    *
FROM 
    grid
-- Return only rows where demand_loss_mw is missing or unknown
WHERE 
    demand_loss_mw IS NULL;


-- Retrieve all columns
SELECT 
    *
FROM 
    grid
-- Return only rows where demand_loss_mw is not missing or unknown
WHERE 
    demand_loss_mw IS NOT NULL;