USE the TestDB
SELECT * FROM MasterMenue
GO 

--Using the Update Statement
SELECT MasterMenue
Set Price = 23.99
Where MenuItemID = 2
GO

--Using The Merge   
MERGE MasterMenu AS TARGET
USING TempUpdateMenu As SOURCE
ON TARGET.MenuItemID = SOURCE.MenuItemID

WHEN MATCHED AND TARGET.MenuItemName <> SOURCE.MenuItemName
OR TARGET.Price <> SOURCE.Price THEN
UPDATE
SET TARGET.MenuItemName = SOURCE.MenuItemName,
TARGET.Price = SOURCE.Price;
