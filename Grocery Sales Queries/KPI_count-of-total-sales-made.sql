select categoryname, count(*)
from sales_empl_view
GROUP BY categoryname
union all 
select 'All Categories', count(*)
from sales_empl_view
ORDER BY categoryname