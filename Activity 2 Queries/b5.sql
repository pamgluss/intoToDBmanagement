/*****************************************************/
/* CS31A - Spring 2017                              */
/* HW2: SQL                                        */
/* Student Name: Pamela Gluss     				  */
/* SID: 20170173                                 */
/************************************************/

/* List countries having a border with another country. */

SELECT code
FROM country
WHERE code IN (
	SELECT country2
	FROM borders
) OR code IN (
    SELECT country1
    FROM borders
 );