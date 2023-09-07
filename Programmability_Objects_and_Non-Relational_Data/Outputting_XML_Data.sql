SELECT [LastName] + ', ' + [FirstName] AS FullName, [JobTitle], [EmailAddress]
FROM [Person].[Person] P
JOIN [HumanResources].[Employee] E ON
P.[BusinessEntityID] = E.[BusinessEntityID]
JOIN [Person].[EmailAddress] EM ON
E.[BusinessEntityID] = EM.[BusinessEntityID]
ORDER BY FullName ASC
--FOR XML RAW
--FOR XML AUTO
FOR XML PATH, ROOT('FullName')
--FOR XML EXPLICIT
