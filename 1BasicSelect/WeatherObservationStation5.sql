/* Link to Problem: https://www.hackerrank.com/challenges/weather-observation-station-5/problem */

SELECT CITY, LENGTH(CITY)
From STATION 
ORDER BY LENGTH(CITY), CITY ASC
limit 1;

SELECT CITY, LENGTH(CITY)
From STATION 
ORDER BY LENGTH(CITY) DESC, CITY
limit 1;
    
