/*****************************************************/
/* CS31A - Spring 2017                              */
/* HW2: SQL                                        */
/* Student Name: Pamela Gluss     				  */
/* SID: 20170173                                 */
/************************************************/
/*Find the city (or cities) with the largest population. */

SELECT name, population
FROM city
WHERE population = (
	SELECT MAX(population)
	FROM city
);
