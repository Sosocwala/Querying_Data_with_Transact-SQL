--Extracting only desired characters with functions

SELECT SUBSTRING('123456789', 2, 5)
SELECT LEFT('123456789', 4)
SELECT Right('123456789', 5)

--Concatenate names for sorting and readability
Use AdventureWorks2019
GO
SELECT[FirstName] + ', ' + [LastName] As FullName
FROM[Person].[Person]

--Using Wildcards in WHERE Clauses
SELECT [LastName]
FROM [Person].[Person]
WHERE [LastName] LIKE 'Sm%'


