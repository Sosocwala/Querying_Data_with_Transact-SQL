EXEC sys.sp_who --Currently logged on user information

EXEC sys.sp_helpdb --properties of all database

EXEC sys.sp_helpdb AdverntureWorks2019 --Propeerties of a specific database

EXEC sys.sp_lock --view currently held locks 

EXEC sys.sp_spaceused -- View space/usage information 

EXEC [sys].[sp_satatype_info] -- View datatype properties 

--Creating  the user difined stored procedures to return an employee email directory

CREATE PROCEDURE Get_Employee_Directory
AS
SELECT [LastName] + ', ' + [FirstName] AS FullName, [JobTitle], [EmailAddress]
FROM [Person].[person] P
JOIN [HumanResources].[Employee] E ON
P.BusinessEntityID = E.BusinessEntityID
JOIN [Person].[EmailAddress] EM ON
E.BusinessEntityID = EM.BusinessEntityID
GO
