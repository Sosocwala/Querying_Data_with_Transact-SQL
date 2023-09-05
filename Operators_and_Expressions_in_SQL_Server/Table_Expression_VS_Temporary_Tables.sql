--Using a Common Table Expression (CTE)
WITH MYCTE
AS
(
	SELECT [EmpID], [EmpName], [ManagedBy]
	FROM [dbo].[TestEmployee]
)
SELECT * FROM MYCTE

--Using a TEMP table
SELECT [EmpID], [EmpName], [ManagedBy]
INTO #TempTable
FROM [TestEmployee]

SELECT * FROM #TempTable
