--This search query selects up to 10 rows of data from the table SECNNET_ASIA_JAPAN.RAW.ZSCALER_ZIA, which contains information about web traffic. The query filters the results to include only rows where the URL contains the string "google", the DEVICE_HOSTNAME is equal to "HOST NAME", and the EVENT_TIME falls between 12:00 AM and 11:55 PM on April 20th, 2023.

--In summary, this query retrieves the first 10 rows of data from the SECNNET_ASIA_JAPAN.RAW.ZSCALER_ZIA table where the web traffic is related to Google and was accessed from a specific device hostname on a specific date and time.

SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.ZSCALER_ZIA
WHERE URL LIKE '%google%'
  AND DEVICE_HOSTNAME = 'HOST NAME'
  AND EVENT_TIME BETWEEN '2023-04-20 00:00:00' AND '2023-04-20 23:55:00'
LIMIT 10;
