SELECT [LastName] + ', ' + [FirstName] AS FullName, [JobTitle], [EmailAddress]
FROM [Person].[Person] P
JOIN [HumanResources].[Employee] E ON
P.[BusinessEntityID] = E.[BusinessEntityID]
JOIN [Person].[EmailAddress] EM ON
E.[BusinessEntityID] = EM.[BusinessEntityID]
ORDER BY FULLName ASC
--FOR JSON AUTO
FOR JSON PATH, ROOT('FullName')
