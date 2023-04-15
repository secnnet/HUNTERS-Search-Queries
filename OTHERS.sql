---Alter Time Zone
ALTER SESSION SET TIMEZONE = 'UTC';
---------------------------------------------------------------------------------------------------------
--Leads Status History 
SELECT *
FROM ICON_EU_DB.INVESTIGATION.LEADS_CLASSIFICATIONS
Limit 10
--The query selects all columns and rows from the LEADS_CLASSIFICATIONS table in the INVESTIGATION schema, which is located in the ICON_EU_DB database.
--In other words, it retrieves all data from the LEADS_CLASSIFICATIONS table in the INVESTIGATION schema. The result will include all columns and all rows of data in the table.

--Leads Status History 
SELECT *
FROM ICON_EU_DB.RAW.ZSCALER_ZIA
Limit 10
--The AQL query SELECT * FROM ICON_EU_DB.RAW.ZSCALER_ZIA retrieves all the data from the ZSCALER_ZIA table in the RAW schema of the ICON_EU_DB database.
--In other words, it selects all columns and rows from the ZSCALER_ZIA table. This query is useful when you want to analyze or manipulate the entire dataset stored in the ZSCALER_ZIA table.
---------------------------------------------------------------------------------------------------------
--Office365 Audit Logs
SELECT User_ID, CLIENT_IP, OPERATION, EVENT_TIME
FROM ICON_EU_DB.RAW.O365_AUDIT_LOGS
WHERE User_ID LIKE '%@iconplc.com'
  AND OPERATION = 'UserLoggedIn'
  AND EVENT_TIME >= DATEADD(hour, -24, GETDATE())
ORDER BY EVENT_TIME DESC;
--This query selects data from the O365_AUDIT_LOGS table in the ICON_EU_DB database. It retrieves the User_ID, CLIENT_IP, OPERATION, and EVENT_TIME columns for records where the following conditions are met:
--The User_ID ends with @iconplc.com (using the LIKE operator with a wildcard)
--The OPERATION value is UserLoggedIn
--The EVENT_TIME is within the last 24 hours (using the DATEADD function to subtract 24 hours from the current date and time, and comparing with the EVENT_TIME column)
--The results are sorted in descending order by the EVENT_TIME column. In summary, this query retrieves information about users who have logged in to the O365 platform within the last 24 hours using an iconplc.com email address.

--Office365 Audit Logs
SELECT *
FROM ICON_EU_DB.RAW.O365_AUDIT_LOGS
WHERE EVENT_TIME >= '2023-04-01 00:00:00' AND EVENT_TIME < '2023-04-04 00:00:00'
--The query selects all columns from the table named O365_AUDIT_LOGS in the RAW schema of the ICON_EU_DB database. The selection is restricted to only include rows where the EVENT_TIME column falls between April 1, 2023, at midnight, and April 4, 2023, at midnight. This query is essentially fetching all the audit logs from the Office 365 service within that time frame.
---------------------------------------------------------------------------------------------------------
--Zscaler Search
SELECT *
FROM ICON_EU_DB.RAW.ZSCALER_ZIA
WHERE URL LIKE '%google.com%'
  AND EVENT_TIME BETWEEN '2023-04-01T00:00:00Z' AND '2023-04-07T00:00:00Z'
ORDER BY EVENT_TIME DESC;
--This query retrieves data from the ZSCALER_ZIA table in the RAW schema of the ICON_EU_DB database. The data that is returned is filtered based on two conditions:
--The URL column must contain the string google.com anywhere in the column value. The '%' symbol is a wildcard character that allows for any characters to be present before or after google.com.
--The EVENT_TIME column must be between April 1st, 2023 at 12:00:00 AM UTC and April 7th, 2023 at 12:00:00 AM UTC.
--The results of the query are sorted in descending order based on the EVENT_TIME column. The '*' symbol in the SELECT statement means that all columns from the ZSCALER_ZIA table will be returned.

--Blocked Security Risk URL Categories 
SELECT DISTINCT URL_CATEGORY, URL_CLASS, ACTION
FROM ICON_EU_DB.RAW.ZSCALER_ZIA
WHERE ACTION = 'Blocked'
  AND URL_CLASS = 'Advanced Security Risk'
  AND EVENT_TIME BETWEEN '2022-04-21 09:25:36' AND '2022-06-21 09:45:36'
--This query selects distinct values of URL_CATEGORY, URL_CLASS, and ACTION from the ZSCALER_ZIA table in the ICON_EU_DB database. The query filters the results to only include events where the ACTION is 'Blocked', the URL_CLASS is 'Advanced Security Risk', and the EVENT_TIME is between '2022-04-21 09:25:36' and '2022-06-21 09:45:36'.
---------------------------------------------------------------------------------------------------------
