/* Problem Link: https://www.hackerrank.com/challenges/asian-population/problem */

SELECT SUM(CI.POPULATION)
FROM CITY CI
JOIN COUNTRY CO
    ON CI.COUNTRYCODE = CO.CODE
WHERE CO.CONTINENT = "Asia";
