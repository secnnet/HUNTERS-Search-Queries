-- The following queries retrieve data from different tables in the SECNNET_ASIA_JAPAN schema

-- This query retrieves the first 10 records from the AWS_CLOUDTRAIL table in the RAW schema
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AWS_CLOUDTRAIL
LIMIT 10;

-- This query retrieves the first 10 records from the AWS_CONFIG table in the RAW schema
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AWS_CONFIG
LIMIT 10;

-- This query retrieves the first 10 records from the AWS_ELB_CLASSIC table in the RAW schema
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AWS_ELB_CLASSIC
LIMIT 10;

-- This query retrieves the first 10 records from the AWS_GUARD_DUTY table in the RAW schema
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AWS_GUARD_DUTY
LIMIT 10;

-- This query retrieves the first 10 records from the AWS_INSPECTOR_FINDINGS table in the RAW schema
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AWS_INSPECTOR_FINDINGS
LIMIT 10;

-- This query retrieves the first 10 records from the AWS_VPC_FLOW_LOGS table in the RAW schema
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AWS_VPC_FLOW_LOGS
LIMIT 10;

-- This query retrieves the first 10 records from the AWS_WAF table in the RAW schema
SELECT *
FROM SECNNET_ASIA_JAPAN.RAW.AWS_WAF
LIMIT 10;

-- All the queries use the LIMIT clause to restrict the output to the first 10 records.

---------------------------------------------------------------------------------------------------------









