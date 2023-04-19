--The given query is using the SQL (Structured Query Language) to retrieve data from a database table called "ZSCALER_ZIA" that belongs to the "SECNNET_ASIA_JAPAN.RAW" schema. The "*" in the "SELECT" statement means that all columns of the table will be retrieved.

--The "LIMIT 10" clause limits the number of rows returned by the query to 10. This is useful when the table contains a large number of rows and the user wants to quickly preview the first few rows of the result set.

--In summary, this query is retrieving the first 10 rows of data from the "ZSCALER_ZIA" table in the "SECNNET_ASIA_JAPAN.RAW" schema, and returning all columns of those 10 rows.

SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.ZSCALER_ZIA
LIMIT 10

---------------------------------------------------------------------------------------------------------

--This is a SQL query that selects data from a database table named "ZSCALER_ZIA" in a schema called "SECNNET_ASIA_JAPAN.RAW". The query retrieves data that meet certain conditions and limits the result set to a maximum of 10 rows. Here is the cleaned and commented version of the code:

-- Select all columns from the table "ZSCALER_ZIA" in the schema "SECNNET_ASIA_JAPAN.RAW"
SELECT * 

-- Filter the results to only include rows where the "HOSTNAME" column ends with ".co.uk"
FROM SECNNET_ASIA_JAPAN.RAW.ZSCALER_ZIA
WHERE HOSTNAME LIKE '%.co.uk'

-- Further filter the results to only include rows where the "ACTION" column is "Allowed"
  AND ACTION = 'Allowed'

-- Further filter the results to only include rows where the "USER" column contains "@email.com"
  AND USER LIKE '%@email.com%'

-- Further filter the results to only include rows where the "EVENT_TIME" column falls between two dates
  AND EVENT_TIME BETWEEN '2023-04-13 00:00:00' AND '2023-04-15 00:00:00'

-- Limit the result set to a maximum of 10 rows
LIMIT 10

--This query is useful for retrieving specific data from a large table based on multiple conditions. The use of the "LIKE" operator allows for flexible matching of partial strings, while the "BETWEEN" operator allows for filtering based on a range of dates. The "LIMIT" clause ensures that the query does not return too much data, which can be especially important when dealing with large tables.