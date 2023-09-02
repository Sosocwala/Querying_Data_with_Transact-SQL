
SELECT [OrganizationLevel], AVG([VacationHours]) AS 'Average Vacation Hours'
FROM[HumanResources].[Employee]
GROUP BY[OrganizationLevel]

SELECT 'Average Vacation Hours' AS 'Organisation Level', --These will be row headers
[1], [2], [3], [4] -- These will be aColumn Headers, but should reflact the real data
FROM
(SELECT [OrganizationLevel], [VacationHours]
FROM[HumanResources].[Employee]) AS Standard_Data --THis Subquery returns the data to
												  --work on. THe data set requires
												  -- an alias
PIVOT --Pivot the acual data into the appropriate columns
(
AVG([VacationHours]) --Summerize the data
FOR [OrganizationLevel] IN ([1], [2], [3], [4]) --The real column is referenced here
												--whith the IN clause to apply the data
												--into the aliased headers
) AS Pivoted_data -- The data set requires an alias

