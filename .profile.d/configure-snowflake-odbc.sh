#!/bin/bash

export ODBCSYSINI=${HOME}/.apt/usr/lib/snowflake/odbc/conf

mkdir -p /etc
echo "[snowflake]
Description=Snowflake Database
Driver=SnowflakeDSIIDriver
" > ${ODBCSYSINI}/odbc.ini
