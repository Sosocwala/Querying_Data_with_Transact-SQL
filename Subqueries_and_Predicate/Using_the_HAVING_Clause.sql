SELECT [JobTitle],[MaritalStatus]
FROM [HumanResources].[Employee] AS E1
GROUP BY [JobTitle],[MaritalStatus]
HAVING AVG([SickLeaveHours]) >=
	(SELECT AVG([SickLeaveHours])
	 FROM [HumanResources].[Employee] AS E2
	 WHERE E2.[MaritalStatus] = E1.[MaritalStatus])
