-- create database 'DataWarehouse'

if exists (select 1 from sys.database where name = 'DataWarehouse')
Begin
    Alter database DataWareHouse SET single_user with rollback immediate
    DROP DATABASE DataWarehouse;
END;
GO
CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;

-- create schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
Go


