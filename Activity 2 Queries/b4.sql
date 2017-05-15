/*****************************************************/
/* CS31A - Spring 2017                              */
/* HW2: SQL                                        */
/* Student Name: Pamela Gluss     				  */
/* SID: 20170173                                 */
/************************************************/

/* For each country, list its population and the total population of all neighboring countries. 
Select the country code of the country followed by its population, followed by the total population of all neighboring countries (and if it has no neighboring countries, NULL). */

SELECT country.code, country.population, SUM(ocPop)
FROM country
JOIN
	(SELECT country1 AS fcode, country2 AS otherCountry
	FROM borders
	UNION
	SELECT country2 AS fcode, country1 AS otherCountry
	FROM borders
	) AS FOO ON country.code = FOO.fcode
  JOIN
  	(SELECT code, population AS ocPop
     FROM country
   ) AS BAR ON otherCountry = BAR.code
     
    
GROUP BY country.code
ORDER BY country.code
;



;
