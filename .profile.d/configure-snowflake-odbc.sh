#!/bin/bash

export ODBCSYSINI=${HOME}/.apt/usr/lib/snowflake/odbc/conf
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH/app/.apt/usr/lib/snowflake/odbc/lib:

mkdir -p /etc
echo "[snowflake]
Description=Snowflake Database
Driver=/app/.apt/usr/lib/snowflake/odbc/lib/libSnowflake.so
" > ${ODBCSYSINI}/odbc.ini
