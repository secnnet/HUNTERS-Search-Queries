--The given query is using the SQL (Structured Query Language) to retrieve data from a database table called "ZSCALER_ZIA" that belongs to the "ICON_EU_DB.RAW" schema. The "*" in the "SELECT" statement means that all columns of the table will be retrieved.

--The "LIMIT 10" clause limits the number of rows returned by the query to 10. This is useful when the table contains a large number of rows and the user wants to quickly preview the first few rows of the result set.

--In summary, this query is retrieving the first 10 rows of data from the "ZSCALER_ZIA" table in the "ICON_EU_DB.RAW" schema, and returning all columns of those 10 rows.

SELECT *
FROM ICON_EU_DB.RAW.ZSCALER_ZIA
LIMIT 10