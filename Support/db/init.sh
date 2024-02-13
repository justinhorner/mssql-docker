#!/bin/bash

isReady=0

while [ $isReady -eq 0 ]
do
    echo "Try again"

    /opt/mssql-tools/bin/sqlcmd -S mssql -U sa -P $SA_PASSWORD -d master -Q "select 1" > /dev/null

    if (( $? == 0 ))
    then
        let isReady=1

        echo "Success connect"
    fi

    echo "Exit code is " $?
done

/opt/mssql-tools/bin/sqlcmd -S mssql -U sa -P $SA_PASSWORD -d master -i /app/init.sql
