-- This SQL query retrieves the first 10 rows of data from the "SECNNET_ASIA_JAPAN.RAW.CISCO_AMP_EVENTS" table.
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.CISCO_AMP_EVENTS
Limit 10;

-- This SQL query retrieves the first 10 rows of data from the "SECNNET_ASIA_JAPAN.RAW.CISCO_ASA_FIREWALL" table.
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.CISCO_ASA_FIREWALL
Limit 10;

-- This SQL query retrieves the first 10 rows of data from the "SECNNET_ASIA_JAPAN.RAW.CISCO_FTD_FIREWALL" table.
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.CISCO_FTD_FIREWALL
Limit 10;

-- This SQL query retrieves the first 10 rows of data from the "SECNNET_ASIA_JAPAN.RAW.CISCO_FTD_IMPACT_FLAG_LOGS" table.
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.CISCO_FTD_IMPACT_FLAG_LOGS
Limit 10;

-- This SQL query retrieves the first 10 rows of data from the "SECNNET_ASIA_JAPAN.RAW.CISCO_UMBRELLA_DNS_LOGS" table.
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.CISCO_UMBRELLA_DNS_LOGS
Limit 10;

---------------------------------------------------------------------------------------------------------

-- This SQL search query retrieves data from a specific table in the SECNNET_ASIA_JAPAN schema of the database
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.CISCO_ASA_FIREWALL
-- This line filters the results to only include rows where the destination IP address contains the specified pattern
WHERE DESTINATION_IP LIKE '%00.000.000.00%'
-- This line filters the results to only include rows where the destination port contains the specified pattern
AND DESTINATION_PORT LIKE '%1389%'
-- This line limits the results to only include rows with an event time within the specified range
AND EVENT_TIME BETWEEN '2023-04-25 00:00:00' AND '2023-04-26 23:55:00'
-- This line limits the results to only include the first 30 rows of the query results
Limit 30














