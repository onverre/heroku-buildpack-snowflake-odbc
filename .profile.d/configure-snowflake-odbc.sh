#!/bin/bash

export ODBCSYSINI=${HOME}/.apt/usr/lib/snowflake/odbc/conf

mkdir -p /etc
echo "[snowflake]
Description=Snowflake Database
Driver=/app/.apt/usr/lib/snowflake/odbc/lib/libSnowflake.so
" > ${ODBCSYSINI}/odbc.ini
