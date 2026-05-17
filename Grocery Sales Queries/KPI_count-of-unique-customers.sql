select categoryname, count(distinct(customername))
from sales_cust_view
group by categoryname
union all
select 'All Categories', count(distinct(customername)) 
from sales_cust_view
ORDER BY categoryname