SELECT [PersonID], [FullName], [PhoneNumber], [EmailAddress]
INTO Sales.Personel_Detail
FROM [Application].[People_Archive]
WHERE [IsSalesperson] = 1

SELECT * FROM [Sales].[Personel_Detail]
