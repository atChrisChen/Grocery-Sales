select categoryname, sum(quantity)
from sales_CUST_view
group by categoryname
union all 
select 'All Categories', sum(quantity)
from sales_empl_view
ORDER BY categoryname