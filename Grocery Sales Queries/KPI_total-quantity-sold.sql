select 
    categoryname, 
    sum(quantity) as quantity_sold
from sales_CUST_view
group by categoryname
union all 
select 
    'All Categories', 
    sum(quantity) as quantity_sold
from sales_empl_view
ORDER BY categoryname