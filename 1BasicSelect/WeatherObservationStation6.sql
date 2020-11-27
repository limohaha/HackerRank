/* Problem Link: https://www.hackerrank.com/challenges/weather-observation-station-6/problem */

SELECT DISTINCT CITY 
FROM STATION
/*  First letter match a,e,i,o,u  */
WHERE CITY RLIKE "^[aeiou].*";

/*  Last letter match a,e,i,o,u  */
/* WHERE CITY RLIKE ".*[aeiou]$"; */
