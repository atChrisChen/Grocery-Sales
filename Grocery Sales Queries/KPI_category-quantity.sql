select categoryname, sum(quantity)
from sales_CUST_view
group by categoryname