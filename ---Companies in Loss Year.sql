---Companies in Loss Year

SELECT Company, COUNT(*) AS Loss_Years
FROM f_report
WHERE Net_Income < 0
GROUP BY Company
ORDER BY Loss_Years DESC;



