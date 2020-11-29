/* Problem Link: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen */

SELECT W.id, P.age, W.coins_needed, W.power
FROM Wands AS W
JOIN Wands_Property AS P ON W.code = P.code
WHERE P.is_evil = 0 AND W.coins_needed = 
    /* The minimum coins needed for each pair of power and age,
       since the SELECTED output wands with a minimum coins needed didnot always
       match with that wond. Therefore, we have to use sub-query */
    (SELECT MIN(coins_needed)
     FROM Wands AS W1
     JOIN Wands_Property as P1
     ON W1.code = P1.code
     WHERE W1.power = W.Power AND P1.age = P.age
    )
ORDER BY W.power DESC, P.age DESC;
