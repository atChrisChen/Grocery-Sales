select categoryname, sum(totalprice)
from sales_empl_view
GROUP BY categoryname
union all 
select 'All Categories', sum(totalprice)
from sales_empl_view
ORDER BY categoryname