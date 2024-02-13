USE [master]
GO

-- Use this command to restore the original MDF and LDF file.
-- https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2022.bak
RESTORE FILELISTONLY FROM DISK = "/var/opt/mssql/backup/AdventureWorks2022.bak"

-- Use files generated by the last step to create the database.
-- For the file path, you can see the output message from the first command.
RESTORE DATABASE AdventureWorks2022 FROM DISK = "/var/opt/mssql/backup/AdventureWorks2022.bak" WITH MOVE "AdventureWorks2022" TO "/var/opt/mssql/data/AdventureWorks2022.mdf", MOVE "AdventureWorks2022_log" TO "/var/opt/mssql/data/AdventureWorks2019.ndf"

GO