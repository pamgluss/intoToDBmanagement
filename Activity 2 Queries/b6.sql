/*****************************************************/
/* CS31A - Spring 2017                              */
/* HW2: SQL                                        */
/* Student Name: Pamela Gluss     				  */
/* SID: 20170173                                 */
/************************************************/

/* List countries having at least two borders with another country. */

SELECT code
FROM country
JOIN
	(SELECT country1 AS fcode, country2 AS otherCountry
	FROM borders
	UNION
	SELECT country2 AS fcode, country1 AS otherCountry
	FROM borders
	) AS FOO ON country.code = FOO.fcode
GROUP BY country.code
HAVING COUNT(code) > 1
;