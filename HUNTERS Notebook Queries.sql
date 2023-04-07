---Alter Time zone
ALTER SESSION SET TIMEZONE = 'UTC';

--Office365 Audit Logs
SELECT User_ID, CLIENT_IP, OPERATION, EVENT_TIME
FROM ICON_EU_DB.RAW.O365_AUDIT_LOGS
WHERE User_ID LIKE '%@iconplc.com'
  AND OPERATION = 'UserLoggedIn'
  AND EVENT_TIME >= DATEADD(hour, -24, GETDATE())
ORDER BY EVENT_TIME DESC;

--This query selects data from the O365_AUDIT_LOGS table in the ICON_EU_DB database. It retrieves the User_ID, CLIENT_IP, OPERATION, and EVENT_TIME columns for records where the following conditions are met:

--The User_ID ends with "@iconplc.com" (using the LIKE operator with a wildcard)
--The OPERATION value is "UserLoggedIn"
--The EVENT_TIME is within the last 24 hours (using the DATEADD function to subtract 24 hours from the current date and time, and comparing with the EVENT_TIME column)

--The results are sorted in descending order by the EVENT_TIME column. In summary, this query retrieves information about users who have logged in to the O365 platform within the last 24 hours using an iconplc.com email address.
