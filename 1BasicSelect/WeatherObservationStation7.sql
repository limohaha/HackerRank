/* Problem Link: https://www.hackerrank.com/challenges/weather-observation-station-7/problem?h_r=next-challenge&h_v=zen */

SELECT DISTINCT CITY 
FROM STATION
/*  Last letter match a,e,i,o,u  */
WHERE CITY RLIKE "[aeiou]$";
