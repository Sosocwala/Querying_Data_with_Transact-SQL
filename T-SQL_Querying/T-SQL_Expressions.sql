--Basic Expression
SELECT 1+1 AS Answer

--Calculated Expression
USE AdventureWorks2019
SELECT [FirstName] + ' '+[LastName] AS FullName
FROM [Person].[Person]

--Concatenated Expression
USE WideWorldImporters
SELECT [UnitPrice]*[Quantity]
FROM [Sales].[OrderLines]
