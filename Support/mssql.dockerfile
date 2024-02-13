FROM mcr.microsoft.com/mssql-tools:latest

USER root
COPY ["Support/db/*", "/app/"]
COPY ["Source/*", "/var/opt/mssql/backup/"]

RUN find /app -type f -exec sed -i "s/\r//" {} \;
# Remember to add the permission.
RUN chmod -R ugo+x /app/*.sh