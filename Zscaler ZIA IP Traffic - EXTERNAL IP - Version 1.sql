--The SQL query you provided selects all columns from a table named "ZSCALER_ZIA" in the "SECNNET_ASIA_JAPAN.RAW" schema/database. The query applies two filters to the data:

--The "URL" column should contain the substring "185.23.125.113"

--The "EVENT_TIME" column should fall between the two specified timestamps: '2023-04-24 00:00:00' and '2023-04-26 00:00:00'.

--The "LIMIT 10" clause at the end of the query limits the results to the first 10 rows.

SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.ZSCALER_ZIA   -- Select all columns from the "ZSCALER_ZIA" table in the "SECNNET_ASIA_JAPAN.RAW" schema
WHERE URL LIKE '%185.23.125.113%' -- Filter the "URL" column to only include rows that contain the substring "185.23.125.113"
AND EVENT_TIME BETWEEN '2023-04-24 00:00:00' AND '2023-04-26 00:00:00' -- Filter the "EVENT_TIME" column to only include rows that fall between two specified timestamps
LIMIT 10  -- Limit the results to the first 10 rows

---------------------------------------------------------------------------------------------------------

--So, this SQL query selects all columns from the "ZSCALER_ZIA" table in the "SECNNET_ASIA_JAPAN.RAW" schema, and applies two filters to the data:

--The "SERVER_IP" column should contain the substring "185.23.125.113"

--The "EVENT_TIME" column should fall between the two specified timestamps: '2023-04-24 00:00:00' and '2023-04-26 00:00:00'.

--Finally, the "LIMIT 10" clause limits the results to the first 10 rows.

SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.ZSCALER_ZIA   -- Select all columns from the "ZSCALER_ZIA" table in the "SECNNET_ASIA_JAPAN.RAW" schema
WHERE SERVER_IP LIKE '%185.23.125.113%' -- Filter the "SERVER_IP" column to only include rows that contain the substring "185.23.125.113"
AND EVENT_TIME BETWEEN '2023-04-24 00:00:00' AND '2023-04-26 00:00:00' -- Filter the "EVENT_TIME" column to only include rows that fall between two specified timestamps
LIMIT 10  -- Limit the results to the first 10 rows
