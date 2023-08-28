USE TestDB
GO

DECLARE @RecordDeleted TABLE
(ID Int,
Name VARCHAR(12),
Price MONEY)

DELETE FROM MasterMenu
OUTPUT DELETED * INTO @RecordDeleted
WHERE MenuItemId = 4;
i
SELECT * FROM @RecordDeleted
