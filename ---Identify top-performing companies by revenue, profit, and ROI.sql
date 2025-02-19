---Identify top-performing companies by revenue, profit, and ROI
use finance;
SELECT TOP 10
Company,Year,Revenue,Net_Income,
ROUND((Net_Income / NULLIF(Revenue, 0)) * 100, 2) AS ROI
FROM dbo.f_report
ORDER BY Revenue DESC, Net_Income DESC, ROI DESC;
