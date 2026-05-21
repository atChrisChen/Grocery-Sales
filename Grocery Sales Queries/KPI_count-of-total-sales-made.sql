select 
    categoryname, 
    count(*) as count_sales_made
from sales_empl_view
GROUP BY categoryname
union all 
select 
    'All Categories', 
    count(*) as count_sales_made
from sales_empl_view
ORDER BY categoryname