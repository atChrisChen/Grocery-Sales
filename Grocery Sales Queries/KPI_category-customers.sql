select categoryname, count(DISTINCT(customername))
from sales_cust_view
GROUP BY categoryname