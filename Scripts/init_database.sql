/*
=============================================================
Create Database and Schemas
=============================================================

Script Purpose:
This script initiates the creation of a new database named 'DataWarehouse', first verifying its existence. 
If the database is found, it is gracefully dropped and recreated. 
Furthermore, the script meticulously establishes three distinct schemas within the database:
'bronze', 'silver', and 'gold', each designed to organize data at different stages of processing.

	
WARNING:
Executing this script will permanently drop the 'DataWarehouse' database if it already exists, resulting in the loss of all data contained within. 
Please proceed with caution and ensure that you have appropriate backups in place before running this script.
*/


USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
