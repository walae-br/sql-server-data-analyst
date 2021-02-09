-- Retrieve the length of the description column, returning the results as description_length.
-- Calculate the length of the description column
SELECT 
    LEN([description]) AS description_length
FROM 
    grid;


-- Retrieve the first 25 characters from the description column in the grid table. Name the results first_25_left.
-- Select the first 25 characters from the left of the description column
SELECT 
    LEFT([description], 25) AS first_25_left
FROM 
    grid


-- Retrieve the last 25 characters from the description column in the grid table. Name the results last_25_right.
-- Amend the query to select 25 characters from the  right of the description column
SELECT 
    RIGHT([description], 25) AS last_25_right
FROM 
    grid


-- You can use CHARINDEX to find a specific character or pattern within a column. 
-- Edit the query to return the CHARINDEX of the string 'Weather' whenever it appears within the description column.
SELECT 
    CHARINDEX('Weather', [description])
FROM 
    grid
WHERE 
    [description] LIKE '%Weather%';

-- We now know where 'Weather' begins in the description column. But where does it end? We could manually count the number of characters, 
-- but, for longer strings, this is more work, especially when we can also find the length with LEN.
SELECT 
    [description], CHARINDEX('Weather', [description]) AS start_string, LEN('Weather') AS length_of_string
FROM 
    grid
WHERE 
    [description] LIKE '%Weather%';


-- Now we use SUBSTRING to return everything after Weather for the first ten rows. The start index here is 15, 
-- because the CHARINDEX for each row is 8, and the LEN of Weather is 7.
-- Complete the substring function to begin extracting from the correct character in the description column
SELECT TOP (10) description, 
    CHARINDEX('Weather', description) AS start_of_string, 
    LEN ('Weather') AS length_of_string, 
    SUBSTRING(
        description, 
        15, 
        LEN(description)) AS additional_description 
FROM 
    grid
WHERE 
    description LIKE '%Weather%';