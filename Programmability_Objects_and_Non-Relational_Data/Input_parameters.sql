CREATE PROCEDURE YourAge @dob DATE
AS
DECLARE @Result AS Int
SET @Result =
(
	SELECT DATEDIFF(YEAR, @dob, GETDATE())
)
	PRINT 'You are ' + CAST(@Result AS CHAR(3)) + 'Years old'
	GO

EXEC YourAge '11/06/1995'

