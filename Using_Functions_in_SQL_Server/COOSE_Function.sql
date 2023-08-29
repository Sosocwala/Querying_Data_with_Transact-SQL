DECLARE @FavSeason Int = 1
SELECT CHOOSE(@FavSeason, 'Summer', 'Autom', 'Winter', 'Spring') As Favorit_Seasons

SELECT [ProductCategoryID]
FROM[Production].[ProductCategory]

SELECT [ProductCategoryID], CHOOSE([ProductCategoryID], 'Category A', 'Category B', 'Category C', 'Category D')
FROM[Production].[ProductCategory]
