-- Select all columns from the table
SELECT *
-- Specify the table to retrieve data from
FROM SECNNET_ASIA_JAPAN.RAW.ZSCALER_ZIA
-- Limit the number of rows returned to 10
LIMIT 10;

---------------------------------------------------------------------------------------------------------

-- Select all columns from the ZSCALER_ZIA table in the SECNNET_ASIA_JAPAN.RAW schema
SELECT * 
FROM SECNNET_ASIA_JAPAN.RAW.ZSCALER_ZIA
-- Filter rows where the hostname ends with '.jp'
WHERE HOSTNAME LIKE '%.jp'
  -- Filter rows where the action is 'Allowed'
  AND ACTION = 'Allowed'
  -- Filter rows where the user email contains '@email.com'
  AND USER LIKE '%@email.com%'
  -- Filter rows where the event time is between '2023-04-13 00:00:00' and '2023-04-15 00:00:00'
  AND EVENT_TIME BETWEEN '2023-04-13 00:00:00' AND '2023-04-15 00:00:00'
-- Limit the result to 10 rows
LIMIT 10;

---------------------------------------------------------------------------------------------------------

-- This SQL query retrieves all columns from a table named SECNNET_ASIA_JAPAN.RAW.ZSCALER_ZIA
SELECT * 
-- This table has a column named URL, and the query filters for all rows where the URL column contains '000.00.000.000'
FROM SECNNET_ASIA_JAPAN.RAW.ZSCALER_ZIA
WHERE URL LIKE '%000.00.000.000%'
-- The query also filters for rows where the EVENT_TIME column falls within the range of April 24, 2023 and April 26, 2023.
AND EVENT_TIME BETWEEN '2023-04-24 00:00:00' AND '2023-04-26 00:00:00'
-- The LIMIT clause is used to restrict the number of rows returned to the first 10.
LIMIT 10;

---------------------------------------------------------------------------------------------------------

-- Select all columns from the ZSCALER_ZIA table in the SECNNET_ASIA_JAPAN.RAW schema
SELECT * 
FROM SECNNET_ASIA_JAPAN.RAW.ZSCALER_ZIA
-- Filter the results by only showing rows where the SERVER_IP column contains the string '000.00.000.000'
WHERE SERVER_IP LIKE '%000.00.000.000%'
-- Filter the results by only showing rows where the EVENT_TIME column is between the specified date and time range
AND EVENT_TIME BETWEEN '2023-04-24 00:00:00' AND '2023-04-26 00:00:00'
-- Limit the results to a maximum of 10 rows
LIMIT 10

---------------------------------------------------------------------------------------------------------

-- Select all columns from the ZSCALER_ZIA table in the SECNNET_ASIA_JAPAN schema.
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.ZSCALER_ZIA
-- Only return rows where the URL column contains the string 'google'.
WHERE URL LIKE '%google%'
-- Only return rows where the DEVICE_HOSTNAME column is equal to 'HOST NAME'.
AND DEVICE_HOSTNAME = 'HOST NAME'
-- Only return rows where the EVENT_TIME column is between April 20th, 2023 at midnight and April 20th, 2023 at 11:55 PM.
AND EVENT_TIME BETWEEN '2023-04-20 00:00:00' AND '2023-04-20 23:55:00'
-- Limit the results to 10 rows.
LIMIT 10;








