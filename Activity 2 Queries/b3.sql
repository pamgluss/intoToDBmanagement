/*****************************************************/
/* CS31A - Spring 2017                              */
/* HW2: SQL                                        */
/* Student Name: Pamela Gluss     				  */
/* SID: 20170173                                 */
/************************************************/
/* For each country, list the city (or cities) with the largest population. 
Select the country code of the country, followed by the province that the city is located in, along with the city name. */

SELECT city.country, province, city.name
FROM city
INNER JOIN (
	SELECT country, MAX(population) AS pop
	FROM city
	GROUP BY country) AS maxp
ON city.country = maxp.country AND population = maxp.pop
ORDER BY country;

