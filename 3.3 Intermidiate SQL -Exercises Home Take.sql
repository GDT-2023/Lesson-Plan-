---#3.1 Create Database 
--Create Database called TEST_1 
--Created the DB both using SQL query and GUI 

---#3.1 Create Table
--3.1.1 Create a new table named GOLDEN_DATA.dbo.DimEmployee that has the schema as [AdventureWorksDW2019].[dbo].[DimEmployee]
	--Use only  EmployeeKey,FirstName,LastName,MiddleName,Title,HireDate,BirthDate,LoginID,EmailAddress,Phone,Gender,DepartmentName,StartDate,EndDate,Status COLUMNS 
	--Use the below to see the TABLE defination of [AdventureWorksDW2019].[dbo].[DimEmployee]
	--Select * from [AdventureWorksDW2019].INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'DimEmployee'

--3.1.2 Insert the records from [AdventureWorksDW2019].[dbo].[DimEmployee] to GOLDEN_DATA.dbo.DimEmployee 

--3.1.3 Add a new column to the GOLDEN_DATA.dbo.DimEmployee named UNIQUEID

--3.1.4 Create a New table named GOLDEN_DATA.dbo.[dbo].[DimCurrency] with 1000 random records from AdventureWorksDW2019.dbo.DimCustomer
	--Hint: Order AdventureWorksDW2019.dbo.DimCustomer table by NEWID() to order them randomly. 

--3.1.5 Write a statment to Drop table GOLDEN_DATA.dbo.DimEmployee and GOLDEN_DATA.dbo.[dbo].[DimCurrency]

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
---#3.2 Table Modification 
--3.2.1 Add a column MONTH_NAME on table GOLDEN_DATA.dbo.TimeSeries.
	--Create MONTH_NAME as a computed column 
	--Use MONTH column to create the MONTH_NAME. 

--3.2.2 set Amount equal to Amount - 10 (Substract 10) for all records with Month 12. 

--3.2.3 Delete all records for ModelRegion "M200 Europe" on table GOLDEN_DATA.dbo.TimeSeries

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
--3.3# Temporary Tables 
--3.3.1 Create a Local Temporary table using the CREATE TABLE STATMENT. Table should have the following columns FIRST_NAME, LAST_NAME, AGE, GENDER.
	--Use appropirate datatype 
	--Insert your own values into the table using INSERT...VALUES statement
	--Select * from the table created

--3.3.2 Using the Golden_Data database, create a Global temp table name ##Global_Temp_Employee and insert all columns/records from Golden_Data.dbo.Employee into this table.
	--Try doing this without using the CREATE TABLE statment 
	--Select Top 100* from the global temp table 

--3.3.3 Run the following queries to create a local and global temp table with one record. 
	--SELECT NUM=1 INTO #TEMP
	--SELECT NUM=2 INTO ##TEMP
		--Open a new SQL query window and run a SELECT * on both tables. Summarize the output in your own words. 

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
--3.4 View 
--3.4.1 Create a view that includes all the records from GOLDEN_DATA.dbo.EmployeeDepartmentRelations that has a DEPARTMENTID is 3.  
	-- name the view vw_EmployeeDepartmentRelations 

--3.4.2 Create a view that shows the following summaries from GOLDEN_DATA.dbo.Employee
	--Number of records 
	--Number of Male and Female
	--Total sickLeavHours 
	--Total VactionHours
	--Create a view on Golden_Data 
	--Name the view vw_Employee_info

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--#3.5 INDEX 
--3.5.1 Create a copy of the [AdventureWorksDW2019].[dbo].[DimReseller] named Golden_Data.dbo.DimReseller_Indexes
	--Create the follwoing indexes on the table
		--iReseller_Key - unique clustred index on ResellerKey 
		--iGeographyKey - Nonclustred index on GeographyKey
		--iFirst_last_orderyear - Composite nonclustred index on FirstOrderYear & LastOrderYear
		--Query sys.indexes to confirm that all three indeses are created. 

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--#3.6 JOINS
--3.6.1 create a query that returns the number of records that match across the GOLDEN_DATA.dbo.ProductModel and GOLDEN_DATA.dbo.Product 

--3.6.2 create a query that returns the number of records that in the GOLDEN_DATA.dbo.ProductModel that do not have a matching record in the the GOLDEN_DATA.dbo.Product 

--3.6.3 create a query that returns the number of records in the GOLDEN_DATA.dbo.Product that do not have a matching record in the GOLDEN_DATA.dbo.ProductModel

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--#3.7 UNION 
---3.7.1 Create a new Table named Golden_Data.dbo.Emp_Poduct_Combined that combines all records from GOLDEN_DATA.dbo.Employee & GOLDEN_DATA.dbo.Product
---Don not remove any dupilicate records 

--3.7.2 combine [GOLDEN_DATA].[dbo].[Product] and  [GOLDEN_DATA].[dbo].[ProductModel]
		---The result should have ProductModelID & Name
		---If PRODUCMODELID is null result should show 9999

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--#3.8 INFORMATION_SCHEMA
--3.8.1 Write a query that returns all olumn in AdventureWorks2019.production.Product that are realted to 'Product'

--3.8.2 Write a query that returns all databases in your server. 

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--#3.9 varaibles, IF..ELSE, WHILE LOOP
--3.9.1 Check to see if there are any NULLS in GOLDEN_DATA.dbo.Product 
		--If there no nulls, excute the a query that shows avergae price
		--If there are nulls print a message that says "Found Nulls"

--3.9.2 Check to see if the first record in GOLDEN_DATA.dbo.Product is NULL or not 
		--If it's not null, excute the a query that shows size
		--If it's null print a message that says "Found Nulls"
--3.9.3 Use a WHILE Loop to generate a randome integer between 1 and 100 
---If the numbner is greater than 10, print "Randome Integer // Value is greater than 10 " and restart the Loop
---If the numbner is greater than 10, print "Randome Integer // Value is less than 10 " and restart the Loop
--Hint RAND() generates a random number between 0 and 1

--3.9.4 Use a WHILE Loop to select each record of [GOLDEN_DATA].[dbo].[Department] table indivisuall
---The while loop should execute all the 16 separte SELECT statments (1 for each reacord in the table)
---Select the records alphabetically using the NAME column
---select all the Columns 
--Hint Start by storing the number of rows in the table into a variable 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--#3.11 SQL ROW FUNCTIONS
--Calculate AGE of each Employee and Use RANK() and DENSE_RANK() to rank the records from the [GOLDEN_DATA].[dbo].[Employee]
--Use Subquery to select FirstName,MiddleName,LastName, AGE(CALCULATED)
----Order the ranking by AGE desc
