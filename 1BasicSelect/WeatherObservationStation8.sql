/* Problem Link: https://www.hackerrank.com/challenges/weather-observation-station-8/problem?h_r=next-challenge&h_v=zen */

SELECT DISTINCT CITY
FROM STATION
/* Both the first and last letter match a,e,i,o,u */
WHERE CITY RLIKE "^[aeiou]" AND CITY RLIKE "[aeiou]$";
