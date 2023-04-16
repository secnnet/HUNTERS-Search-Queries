---Alter Time Zone
ALTER SESSION SET TIMEZONE = 'UTC';

--The AQL command "ALTER SESSION SET TIMEZONE = 'UTC';" is setting the timezone of the current session to UTC (Coordinated Universal Time).

--AQL (Aerospike Query Language) is a SQL-like query language used to query and manipulate data in an Aerospike database.

--The ALTER SESSION statement in AQL is used to change the settings of the current session. In this case, the TIMEZONE setting is being changed to UTC. This means that any timestamp values used in subsequent queries or data manipulation operations will be interpreted as UTC timestamps.

---------------------------------------------------------------------------------------------------------

--Source Lag Time:
SELECT 
    MAX(EVENT_TIME) AS max_event_time, -- select the maximum value of the EVENT_TIME column and rename it as max_event_time
    CURRENT_TIMESTAMP AS current_time, -- get the current timestamp and rename it as current_time
    TIMESTAMPDIFF(MINUTES, MAX(EVENT_TIME), CURRENT_TIMESTAMP) AS lag_in_minutes -- calculate the difference between the maximum EVENT_TIME and current timestamp, in minutes, and rename it as lag_in_minutes
FROM 
    "ICON_EU_DB"."RAW"."ZSCALER_ZIA"; -- specify the database, schema, and table to query data from, in this case "ZSCALER_ZIA"

--The given code is an SQL query written in the AQL (Analytics Query Language) syntax, which is used to query data stored in databases, specifically for analytics purposes.

--The query is selecting data from a specific table "ZSCALER_ZIA" in the database "ICON_EU_DB" and performing three calculations.

--The first calculation uses the MAX function to find the maximum value of the "EVENT_TIME" column and renames it as "max_event_time".

--The second calculation uses the CURRENT_TIMESTAMP function to get the current time and renames it as "current_time".

--The third calculation uses the TIMESTAMPDIFF function to find the difference between the maximum value of "EVENT_TIME" and the current time, in minutes, and renames it as "lag_in_minutes".

--This query can be used to track the lag time between the latest event time in the "ZSCALER_ZIA" table and the current time.	
