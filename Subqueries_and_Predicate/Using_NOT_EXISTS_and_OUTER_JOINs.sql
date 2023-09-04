SELECT [BusinessEntityID]
FROM [HumanResources].[Employee] E1
WHERE NOT EXISTS
	(SELECT *
	FROM [HumanResources].[Employee] E2
	WHERE E1.[BirthDate] = E2.[HireDate])

SELECT E1.[BusinessEntityID]
FROM [HumanResources].[Employee] E1
LEFT OUTER JOIN [HumanResources].[Employee] E2
 ON E1.[BusinessEntityID] = E2.[BusinessEntityID]
 AND E1.[BirthDate] = E2.[HireDate]
