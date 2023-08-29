SELECT
	 CASE WHEN TRY_CONVERT(Int, 'Hello World') IS NULL
		THEN 'Parsing Faild Sorry!'
		ELSE 'Parsing succeded - Hello Wold'
	END

SELECT
	 CASE WHEN TRY_CONVERT(VARCHAR(15), 'Hello World') IS NULL
		THEN 'Parsing Faild Sorry!'
		ELSE 'Parsing succeded - Hello Wold'
	END
