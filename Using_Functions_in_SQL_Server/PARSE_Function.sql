SELECT[HireDate]
FROM [HumanResources].[Employee]

SELECT'Employee hired on ' + CONVERT(VARCHAR(15), [HireDate], 101) AS 'MM/DD/YYYY'
FROM[HumanResources].[Employee]
