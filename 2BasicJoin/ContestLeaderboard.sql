/* Problem Link: https://www.hackerrank.com/challenges/contest-leaderboard/problem */

select h.hacker_id, name, sum(score) as total_score 
from hackers as h 
join
/* maximum score */
(select hacker_id, max(score) as score 
 from submissions 
 group by challenge_id, hacker_id) max_score
 
on 
h.hacker_id=max_score.hacker_id
 
group by h.hacker_id, name
/* don't accept hackers with total_score=0 */
having total_score > 0
/* finally order as required */
order by total_score desc, h.hacker_id;
