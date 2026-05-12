WITH sales_CUST AS(
    SELECT *
    FROM sales

    LEFT JOIN products ON sales.productid = products.productid
    LEFT JOIN categories ON products.categoryid = categories.categoryid

    LEFT JOIN customers ON sales.customerid = customers.customerid
    LEFT JOIN cities ON customers.cityid = cities.cityid

    LEFT JOIN countries ON cities.countryid = countries.countryid
)

select 
    CONCAT(firstname, ' ', lastname) as customername,
    categoryname,
    productname,
    price,
    quantity,
    discount,    
    (price * quantity) - (price * discount) as total,
    salesdate,
    address,
    cityname,
    countryname,
    resistant,
    isallergic
from sales_CUST
limit 100;