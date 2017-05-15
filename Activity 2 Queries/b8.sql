/*****************************************************/
/* CS31A - Spring 2017                              */
/* HW2: SQL                                        */
/* Student Name: Pamela Gluss     				  */
/* SID: 20170173                                 */
/************************************************/
/*List all countries in Europe or Asia. */

SELECT code
FROM country
WHERE code IN(
    SELECT country
    FROM encompasses
    WHERE continent = 'Asia' OR continent = 'Europe'
    );