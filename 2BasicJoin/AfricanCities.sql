/* Problem Link: https://www.hackerrank.com/challenges/african-cities/problem?h_r=next-challenge&h_v=zen */

SELECT CI.NAME
FROM CITY CI
JOIN COUNTRY CO
ON CI.COUNTRYCODE = CO.CODE
WHERE CO.CONTINENT = "Africa";
