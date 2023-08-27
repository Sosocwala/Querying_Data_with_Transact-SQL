--USing the Calculated Expression 
USE AdventureWorks2019
SELECT [UnitPrice][OrderQty], ([UnitPrice]*[OrderQty]) AS SubTotal
FROM [Sales].[SalesOrderDetail]

SELECT [FirstName],[AdditionalContactInfo]+ ' - Please Send Emails Only For Hire' AS Mail
FROM[Person].[Person]
