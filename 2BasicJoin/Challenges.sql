/* Problem Link: */

SELECT c.hacker_id, h.name, count(c.hacker_id) as cthid0
FROM hackers AS h 
JOIN challenges As c ON c.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name

/* 
   This is a filter from HAVING;
   Select the appropriate rows limited by more than one 
        student created the same number of challenges;
*/

HAVING 
    cthid0 = 
    /* Anyone has the maximum number of challenges */
             (SELECT max(tmp.cthid1)
              FROM (
                    SELECT count(hacker_id) AS cthid1
                    FROM challenges
                    GROUP BY hacker_id
                    ORDER BY hacker_id
                   ) tmp) 
    OR 
    /* Anyone's count is in the following set */
    cthid0 IN 
            (SELECT tmp2.cthid2
             FROM (
                    /* The appropriate set of counts */
                    SELECT COUNT(*) AS cthid2
                    FROM challenges
                    GROUP BY hacker_id) tmp2
                    /* Group of counts (With replicates in each Group) */
                    GROUP BY tmp2.cthid2
                    /* Filter: Group of counts (Remove all sub groups with more than one hakcer_id);
                               if the number of challenges created less than the maximum from above */
                    HAVING COUNT(tmp2.cthid2) = 1)
ORDER BY cthid0 DESC, c.hacker_id;
