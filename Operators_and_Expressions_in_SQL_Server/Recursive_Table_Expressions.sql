--The Common Table Expression table 
WITH EmplevelCTE (ManagedBy, EmpID, EmpName, Level)
AS
(
--Set Base Level
	SELECT e.ManagedBy, e.EmpID, e.EmpName, 0 AS Level
	FROM [TestEmployee] AS e
	WHERE ALL
	--Recursivly add employees level definition
	SELECT e.ManagedBy, e.EmpID, e.EmpName,  AS Level +1
	FROM [dbo].[TestEmployee] AS e
	INNER JOIN  EmplevelCTE AS el
	ON  e.ManagedBy = el.EmpID
)
--Execute the CTE
SELECT e.ManagedBy, e.EmpID, e.EmpName,Level
FROM EmplevelCTE
