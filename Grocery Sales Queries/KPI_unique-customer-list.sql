SELECT DISTINCT categoryname
FROM sales_empl_view
UNION ALL
SELECT 'All Categories' AS categoryname
ORDER BY categoryname