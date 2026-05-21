select 
    employeename, 
    categoryname, 
    sum(totalprice) as sales_sum
from sales_empl_view
group by employeename, categoryname
order by categoryname, sales_sum desc