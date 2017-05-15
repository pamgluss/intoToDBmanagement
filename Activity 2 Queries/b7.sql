/*****************************************************/
/* CS31A - Spring 2017                              */
/* HW2: SQL                                        */
/* Student Name: Pamela Gluss     				  */
/* SID: 20170173                                 */
/************************************************/
/* List countries having no border with another country. */

SELECT code
FROM country
WHERE code NOT IN (
	SELECT country2
	FROM borders
) AND code NOT IN (
    SELECT country1
    FROM borders
 );