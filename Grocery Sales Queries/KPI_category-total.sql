select categoryname, sum(totalprice)
from sales_empl_view
GROUP BY categoryname