---Calculate year-over-year financial growth

SELECT 
    f1.Company,
    f1.Year,
    f1.Revenue,
    f2.Revenue AS Prev_Year_Revenue,
    ROUND(((f1.Revenue - f2.Revenue) / NULLIF(f2.Revenue, 0)) * 100, 2) AS YoY_Revenue_Growth,
    
    f1.Net_Income,
    f2.Net_Income AS Prev_Year_Net_Income,
    ROUND(((f1.Net_Income - f2.Net_Income) / NULLIF(f2.Net_Income, 0)) * 100, 2) AS YoY_Profit_Growth,
    
    f1.Market_Cap_in_B_USD,
    f2.Market_Cap_in_B_USD AS Prev_Year_Market_Cap,
    ROUND(((f1.Market_Cap_in_B_USD - f2.Market_Cap_in_B_USD) / NULLIF(f2.Market_Cap_in_B_USD, 0)) * 100, 2) AS YoY_Market_Cap_Growth

FROM f_report f1
LEFT JOIN f_report f2 
ON f1.Company = f2.Company 
AND f1.Year = f2.Year + 1
ORDER BY f1.Company, f1.Year DESC;

