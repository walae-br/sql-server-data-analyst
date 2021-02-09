-- Retrieve the song, artist and release_year columns
SELECT 
    song, 
    artist, 
    release_year
FROM 
    songlist;


-- Retrieve the song, artist and release_year columns
SELECT 
    song, 
    artist, 
    release_year
FROM 
    songlist
-- Ensure there are no missing or unknown values in the release_year column
WHERE 
    release_year IS NOT NULL;


-- Retrieve the song,artist and release_year columns
SELECT 
    song, 
    artist, 
    release_year
FROM 
    songlist
-- Ensure there are no missing or unknown values in the release_year column
-- Arrange the results by the artist and release_year columns
WHERE 
    release_year IS NOT NULL
ORDER BY 
    artist, release_year;


-- Extend the WHERE clause so that the results are those with a release_year greater than or equal to 1980 and less than or equal to 1990.
-- Retrieve the song,artist and release_year columns
SELECT 
    song, 
    artist, 
    release_year
FROM 
    songlist
-- Ensure there are no missing or unknown values in the release_year column
-- Arrange the results by the artist and release_year columns
WHERE 
    release_year >= '1980-01-01' 
    AND release_year <= '1990-12-31'
ORDER BY 
    artist, release_year;


-- Update your query to use an OR instead of an AND.
-- Extend the WHERE clause so that the results are those with a release_year greater than or equal to 1980 and less than or equal to 1990.
-- Retrieve the song,artist and release_year columns
SELECT 
    song, 
    artist, 
    release_year
FROM 
    songlist
-- Ensure there are no missing or unknown values in the release_year column
-- Arrange the results by the artist and release_year columns
WHERE 
    release_year >= '1980-01-01' 
    OR release_year <= '1990-12-31'
ORDER BY 
    artist, release_year;


-- Select all artists beginning with B who released tracks in 1986, but also retrieve any records where the release_year is greater than 1990.
SELECT 
    artist
FROM 
    songlist
WHERE 
    (artist LIKE 'B%' AND 
        (release_year >= '1986-01-01' 
        AND release_year <= '1986-12-31')) 
    OR release_year > '1990-01-01';