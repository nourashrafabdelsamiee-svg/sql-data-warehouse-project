/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files as it is . 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.
===============================================================================
*/

CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
DECLARE @start_time DATETIME, @end_time DATETIME
	BEGIN TRY
	print '////////////////////////////////////////'
	print 'loading data from crm source'
	print '////////////////////////////////////////'
	SET @start_time = GETDATE();
	Truncate table bronze.crm_cust_info
	Bulk insert bronze.crm_cust_info
	from 'D:\Nour\FCDS\Data Engineering\SQL Data Warehousing Project\datasets\Source_crm\cust_info.csv'
	with(
		firstrow= 2,
		fieldterminator= ',',
		tablock
	)

	Truncate table bronze.crm_prd_info
	Bulk insert bronze.crm_prd_info
	from 'D:\Nour\FCDS\Data Engineering\SQL Data Warehousing Project\datasets\Source_crm\prd_info.csv'
	with(
		firstrow= 2,
		fieldterminator= ',',
		tablock
	)

	Truncate table bronze.crm_sales_details
	Bulk insert bronze.crm_sales_details
	from 'D:\Nour\FCDS\Data Engineering\SQL Data Warehousing Project\datasets\Source_crm\sales_details.csv'
	with(
		firstrow= 2,
		fieldterminator= ',',
		tablock
	)
	print '////////////////////////////////////////'
	print 'loading data from erp source'
	print '////////////////////////////////////////'
	Truncate table bronze.erp_cust_az12
	Bulk insert bronze.erp_cust_az12
	from 'D:\Nour\FCDS\Data Engineering\SQL Data Warehousing Project\datasets\Source_erp\cust_az12.csv'
	with(
		firstrow= 2,
		fieldterminator= ',',
		tablock
	)

	Truncate table bronze.erp_loc_a101
	Bulk insert bronze.erp_loc_a101
	from 'D:\Nour\FCDS\Data Engineering\SQL Data Warehousing Project\datasets\Source_erp\loc_a101.csv'
	with(
		firstrow= 2,
		fieldterminator= ',',
		tablock
	)

	Truncate table bronze.erp_px_cat_g1v2
	Bulk insert bronze.erp_px_cat_g1v2
	from 'D:\Nour\FCDS\Data Engineering\SQL Data Warehousing Project\datasets\Source_erp\px_cat_g1v2.csv'
	with(
		firstrow= 2,
		fieldterminator= ',',
		tablock
	)
	SET @end_time = GETDATE();
		PRINT '=========================================='
		PRINT 'Loading Bronze Layer is Completed';
        PRINT '   - Total Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '=========================================='
	END TRY
	BEGIN CATCH
		PRINT '=========================================='
		PRINT 'ERROR OCCURED DURING LOADING BRONZE LAYER'
		PRINT 'Error Message' + ERROR_MESSAGE();
		PRINT 'Error Message' + CAST (ERROR_NUMBER() AS NVARCHAR);
		PRINT 'Error Message' + CAST (ERROR_STATE() AS NVARCHAR);
		PRINT '=========================================='
	END CATCH
END