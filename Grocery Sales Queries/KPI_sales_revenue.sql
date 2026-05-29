select 
    categoryname, 
    sum(totalprice) as sum_total_sales
from sales_empl_view
GROUP BY categoryname
union all 
select 
    'All Categories', 
    sum(totalprice) as sum_total_sales
from sales_empl_view
ORDER BY categoryname