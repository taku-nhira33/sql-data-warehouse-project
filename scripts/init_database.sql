/*
======================================
Create Database and Schemas
======================================
Objective:
  Create a database named 'DataWarehouse' after first checking if it already exists. If the database already exists
  , it is dropped and recreated. Then create 3 schemas within the database named 'gold', 'silver' and 'bronze' respectively. 

*/

USE master;
GO

--Check if the database already exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO
  
--Create the database, name it 'DataWarehouse' 
CREATE DATABASE DataWarehouse

USE DataWarehouse;

--Create schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
