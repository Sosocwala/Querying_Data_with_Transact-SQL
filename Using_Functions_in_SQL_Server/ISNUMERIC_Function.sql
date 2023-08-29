SELECT[PostalCode]
FROM [Person].[Address]
WHERE ISNUMERIC([PostalCode]) = 1
 
SELECT[PostalCode]
FROM [Person].[Address]
WHERE ISNUMERIC([PostalCode]) <> 1
