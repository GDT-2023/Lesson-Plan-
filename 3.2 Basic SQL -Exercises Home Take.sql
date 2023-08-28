--##2.1 SELECT EXERCISE

--2.1.1 Select the AddressID,City,StateProvinceCode,Name,PostalCode for the top 50 records in the GOLDEN_DATA.dbo.Address table. 

--2.1.2 Select all distinct JobTitle in the GOLDEN_DATA.dbo.Employee table. 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--##2.2 DATATYPE EXERCISE	
--2.2.1 Select distinct ListPrice values from GOLDEN_DATA.dbo.Product.Display the filed with 1 decimal places
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--##2.3 SQL Functions EXERCISE
-- String Functions
--2.3.1 Select the hiredate column from the GOLDEN_DATA.dbo.Employee table. Display the filed in the following format MM/DD/YYYY. DO not use CAST or CONVERT
	
--2.3.2 Show the full mailing address for eaah records in GOLDEN_DATA.dbo.Address. Result need to show StreetAddress,city,State,Zip

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--2.4 WHERE CLAUSE

--2.4.1 Select ALL the records in GOLDEN_DATA.dbo.Employee table where gender is "Male" and JobTile is "Network Administrator" or Gender is "Female" and jobtile "Production Technician - WC50".

--2.4.2 Select Name,ProductNumber,Color,StandardCost,ListPrice,SellStartDate,SellEndDate from GOLDEN_DATA.dbo.Product table where Modelname is "Bike Wash" and "Cable Lock" from  GOLDEN_DATA.dbo.ProductModel


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--2.6 DATA AGGEREGTIONS

--2.6.1 Write a query againist [GOLDEN_DATA].[dbo].[Product] that returns 
		--Avergae of  Listpirce 
		--Minumum and maximum of the Listpirce
		--Total sum of the list price

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--2.7 GROUP BY

--2.7.1 What is the distribution employees hired for the below groupins in [GOLDEN_DATA].[dbo].Employee
	--Groupings: 2006-2007, 2008-2009, 2010-2011, 2012-2013