--The code you provided is a SQL query written in the AQL (Analytical Query Language) dialect for querying data from a database. Specifically, this query is selecting all columns from a table named "FORTINET_FIREWALL" in a database schema named "RAW" within a database named "ICON_EU_DB". The "LIMIT 10" clause at the end of the query limits the results to the first 10 rows of the table.

--In summary, this query is retrieving the first 10 rows of data from the "FORTINET_FIREWALL" table in the "RAW" schema of the "ICON_EU_DB" database.

SELECT *
FROM ICON_EU_DB.RAW.FORTINET_FIREWALL
Limit 10