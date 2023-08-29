DECLARE @Var1 Int = 20, @Var2 Int = 10
SELECT IIF(@Var1 > @Var2, 'True', 'False') AS Answer

DECLARE @VarNumericNums Int
SET @VarNumericNums = (
SELECT COUNT([PostalCode]) 
FROM[Person].[Address]
WHERE ISNUMERIC([PostalCode]) = 1
)
SELECT IIF(@VarNumericNums > 0, (SELECT @VarNumericNums), 'There are no Postal Codes') AS NumericCodes
