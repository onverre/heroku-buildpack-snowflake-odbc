#!/bin/bash

export ODBCSYSINI=${HOME}/.apt/usr/lib/snowflake/odbc/conf/

mkdir -p /etc
echo "[snowflake]
Description=Snowflake Database
Driver=SnowflakeDSIIDriver
uid         = ${SNOWFLAKE_USERNAME}
pwd         = ${SNOWFLAKE_PASSWORD}
server      = ${SNOWFLAKE_ACCOUNT}.snowflakecomputing.com
database    = ${SNOWFLAKE_DATABASE}
schema      = ${SNOWFLAKE_SCHEMA}
warehouse   = ${SNOWFLAKE_WAREHOUSE}
role        = ${SNOWFLAKE_ROLE}
" > ${ODBCSYSINI}/odbc.ini
