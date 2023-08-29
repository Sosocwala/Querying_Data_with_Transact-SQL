SELECT PARSE('Tuesday April 5, 2016' AS DATE USING 'en-US')

SELECT TRY_PARSE('Tuesday April 5th, 2016' AS DATE USING 'en-US')

SELECT CASE
	WHEN TRY_PARSE('Tuesday April 5th, 2016' AS DATE USING 'en-US') IS NULL
		THEN 'Parsing Faild Sorry!'
		ELSE 'Parsing succeded - The date is Tuesday April 5th, 2016'
	END
