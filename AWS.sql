--This is a series of 7 AQL (Amazon Query Language) queries that retrieve data from different tables within a database called SECNNET_ASIA_JAPAN.RAW.

--Each query starts with the SELECT keyword, which specifies the columns to be returned. The asterisk (*) is used to select all columns from the table.

--The FROM keyword specifies the table name to retrieve data from. The table names in these queries are AWS_CLOUDTRAIL, AWS_CONFIG, AWS_ELB_CLASSIC, AWS_GUARD_DUTY, AWS_INSPECTOR_FINDINGS, AWS_VPC_FLOW_LOGS, and AWS_WAF.

--Finally, the LIMIT keyword is used to limit the number of rows returned from each query. In this case, each query is limited to 10 rows.

--So, each of these queries retrieves the first 10 rows of data from a different table in the SECNNET_ASIA_JAPAN.RAW database. These tables contain information related to various Amazon Web Services (AWS) services such as CloudTrail, Config, Elastic Load Balancing (ELB), GuardDuty, Inspector Findings, VPC Flow Logs, and Web Application Firewall (WAF).

SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AWS_CLOUDTRAIL
Limit 10

SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AWS_CONFIG
Limit 10

SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AWS_ELB_CLASSIC
Limit 10

SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AWS_GUARD_DUTY
Limit 10

SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AWS_INSPECTOR_FINDINGS
Limit 10

SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AWS_VPC_FLOW_LOGS
Limit 10

SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AWS_WAF
Limit 10