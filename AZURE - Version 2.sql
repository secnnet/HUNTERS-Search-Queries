-- The following SQL search query selects all columns from the first 10 rows of the "AZURE_ACTIVE_DIRECTORY_USERS" table in the "RAW" schema of the "SECNNET_ASIA_JAPAN" database.
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AZURE_ACTIVE_DIRECTORY_USERS
Limit 10

-- The following SQL search query selects all columns from the first 10 rows of the "AZURE_ACTIVITY" table in the "RAW" schema of the "SECNNET_ASIA_JAPAN" database.
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AZURE_ACTIVITY
Limit 10

-- The following SQL search query selects all columns from the first 10 rows of the "AZURE_AUDIT" table in the "RAW" schema of the "SECNNET_ASIA_JAPAN" database.
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AZURE_AUDIT
Limit 10

-- The following SQL search query selects all columns from the first 10 rows of the "AZURE_SIGNIN" table in the "RAW" schema of the "SECNNET_ASIA_JAPAN" database.
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AZURE_SIGNIN
Limit 10

---------------------------------------------------------------------------------------------------------

-- Select all columns from the table
SELECT *
-- From the table named "AZURE_SIGNIN" in the "RAW" schema of the "SECNNET_ASIA_JAPAN" database
FROM SECNNET_ASIA_JAPAN.RAW.AZURE_SIGNIN
-- Filter results where the "IDENTITY" column contains the string "First Name, Last Name"
WHERE IDENTITY LIKE '%First Name, Last Name%'
-- Filter results where the "EVENT_TIME" column is between '2023-04-25 00:00:00' and '2023-04-26 23:55:00'
AND EVENT_TIME BETWEEN '2023-04-25 00:00:00' AND '2023-04-26 23:55:00'
-- Filter results where the "CALLER_IP_ADDRESS" column contains the string '111.111.1.11'
AND CALLER_IP_ADDRESS LIKE '%111.111.1.11%'
-- Limit the number of results returned to 20
LIMIT 20;