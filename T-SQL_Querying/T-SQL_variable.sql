DECLARE @NUmber INT
SET @NUmber = 5
SELECT @NUmber 

--Setting a variable using a function
DECLARE @Today Date
SET @Today = GETDATE()
SELECT @Today as Today

--Using a variable in a query
 DECLARE @HireDate Date
 SET @HireDate = '2008-1-1'
 SELECT * FROM [HumanResources].[Employee]
 WHERE HireDate <= @HireDate
 GO

