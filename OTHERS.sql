---Alter Time Zone:
ALTER SESSION SET TIMEZONE = 'UTC';

---------------------------------------------------------------------------------------------------------

-- This SQL query selects data from a table named "ZSCALER_ZIA" in the "RAW" schema of a database named "SECNNET_ASIA_JAPAN"
SELECT
-- This selects the maximum value of the "EVENT_TIME" column in the table and renames the output as "max_event_time"
MAX(EVENT_TIME) AS max_event_time,
-- This selects the current timestamp and renames the output as "current_time"
CURRENT_TIMESTAMP AS current_time,
-- This calculates the time difference in minutes between the maximum "EVENT_TIME" value and the current timestamp and renames the output as "lag_in_minutes"
TIMESTAMPDIFF(MINUTES, MAX(EVENT_TIME), CURRENT_TIMESTAMP) AS lag_in_minutes
FROM
"SECNNET_ASIA_JAPAN"."RAW"."ZSCALER_ZIA";
-- This specifies the table to select data from.

---------------------------------------------------------------------------------------------------------





