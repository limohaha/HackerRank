/* Problem Link: https://www.hackerrank.com/challenges/weather-observation-station-11/problem?h_r=next-challenge&h_v=zen */

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT RLIKE "^[aeiou]" OR CITY NOT RLIKE "[aeiou]$";
