---Perform summary statistics (mean, median, min, max)

SELECT DISTINCT
    MIN(Revenue) OVER() AS Min_Revenue,
    MAX(Revenue) OVER() AS Max_Revenue,
    AVG(Revenue) OVER() AS Avg_Revenue,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Revenue) OVER() AS Median_Revenue
FROM f_report;





