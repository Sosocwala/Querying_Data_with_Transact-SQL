--Simple CASE Expression Logi

USE AdventureWorks2019
GO
DECLARE @Risck INT 
SET @Risck = 10
SELECT 
CASE @Risck
WHEN 10 THEN 'Winner'
WHEN 20 THEN 'Nearly There'
WHEN 30 THEN 'You got this come bruv'
ELSE 'You were nothing close boyzen'
END

--Using a Table to use the CASE Expression
SELECT [LoginID], 'Marital Status' =
	CASE [MaritalStatus]
	WHEN 'S' THEN 'Single'
	WHEN 'M' THEN 'Marid'
	WHEN 'D'THEN  'Devorced'
	ELSE 'Unknown'
	END
FROM [HumanResources].[Employee]

--CASE Expression
SELECT [LoginID], 'Sick Leave Hours' =
	CASE
	WHEN [SickLeaveHours] <= 20 THEN 'Very Healthy'
	WHEN [SickLeaveHours] >= 21 and  [SickLeaveHours] <= 40 THEN 'Healthy dont need any check up'
	WHEN [SickLeaveHours] >= 41  and [SickLeaveHours] <= 60 THEN 'You need to see a Doctor'
	ELSE 'What are you referring to'
	END
FROM[HumanResources].[Employee]





