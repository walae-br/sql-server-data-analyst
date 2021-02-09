-- Obtain a grand total of the demand_loss_mw column by using the SUM function, and alias the result as MRO_demand_loss.
-- Only retrieve rows WHERE demand_loss_mw is not NULL and nerc_region is 'MRO'.
SELECT 
    SUM(demand_loss_mw) AS MRO_demand_loss
FROM 
    grid
WHERE 
    demand_loss_mw IS NOT NULL AND nerc_region = 'MRO';


-- Return the COUNT of the grid_id column, aliasing the result as grid_total.
SELECT 
    COUNT(grid_id) AS grid_total
FROM 
    grid;


--Make the count more meaningful by restricting it to records where the nerc_region is 'RFC'. Name the result RFC_count.
SELECT 
    COUNT(grid_id) AS RFC_count
FROM 
    grid
WHERE 
    nerc_region = 'RFC'


-- Find the minimum number of affected customers
SELECT 
    MIN(affected_customers) AS min_affected_customers 
FROM 
    grid
-- Only retrieve rows where demand_loss_mw has a value
WHERE 
    demand_loss_mw IS NOT NULL;



-- Find the maximun number of affected customers
SELECT 
    MAX(affected_customers) AS min_affected_customers 
FROM 
    grid
-- Only retrieve rows where demand_loss_mw has a value
WHERE 
    demand_loss_mw IS NOT NULL;


-- Find the average number of affected customers
SELECT 
    AVG(affected_customers) AS min_affected_customers 
FROM 
    grid
-- Only retrieve rows where demand_loss_mw has a value
WHERE 
    demand_loss_mw IS NOT NULL;