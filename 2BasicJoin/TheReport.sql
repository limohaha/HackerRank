/* Problem Link: https://www.hackerrank.com/challenges/the-report/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen */

SELECT IF(GRADE < 8, NULL, NAME), GRADE, MARKS
FROM STUDENTS
JOIN GRADES
WHERE MARKS BETWEEN MIN_MARK AND MAX_MARK
ORDER BY GRADE DESC, NAME
