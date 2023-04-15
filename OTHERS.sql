--The AQL command "ALTER SESSION SET TIMEZONE = 'UTC';" is setting the timezone of the current session to UTC (Coordinated Universal Time).

--AQL (Aerospike Query Language) is a SQL-like query language used to query and manipulate data in an Aerospike database.

--The ALTER SESSION statement in AQL is used to change the settings of the current session. In this case, the TIMEZONE setting is being changed to UTC. This means that any timestamp values used in subsequent queries or data manipulation operations will be interpreted as UTC timestamps.

---Alter Time Zone
ALTER SESSION SET TIMEZONE = 'UTC';
---------------------------------------------------------------------------------------------------------

