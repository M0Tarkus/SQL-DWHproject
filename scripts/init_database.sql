/* 
================================================================================================
Create Database and Schemas 
================================================================================================
Script purpose: 
  This script creates a new database named 'DataWarehouse' after checking if irt already exists. If the databse exits, it is dropped and recreated.
  Additionally, the script sets up trhree schemas withing the database: 'bronze', 'silver', and 'gold'.  

Warning: 
  Running this script will dropt the entire 'Datawarehouse' Database if it exists. 
  All dat in the database will be permenantly deleted. Proceed with caution and ensure that you have proper backups and safety measures.
*/


USE master;
GO 

-- Drop and recreate the 'DataWarehouse' Database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse; 
END; 
GO

-- Create the 'DataWarehouse' Database
CREATE DATABASE DataWarehouse; 
GO

USE DataWarehouse; 
GO

-- Create Schema
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver
GO 

CREATE SCHEMA gold 
GO 






