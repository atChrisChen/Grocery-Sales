WITH sales_CUST AS(
    SELECT
        CONCAT(customers.firstname, ' ', customers.lastname) as customername,
        categories.categoryname,
        products.productname,
        products.price,
        sales.quantity,
        sales.discount,  
        (products.price * sales.quantity) * (1 - sales.discount) as totalprice,
        sales.salesdate,
        customers.address as customeraddress,
        cities.cityname,
        countries.countryname,
        products.resistant,
        products.isallergic
    FROM sales

    LEFT JOIN products ON sales.productid = products.productid
    LEFT JOIN categories ON products.categoryid = categories.categoryid

    LEFT JOIN customers ON sales.customerid = customers.customerid
    LEFT JOIN cities ON customers.cityid = cities.cityid

    LEFT JOIN countries ON cities.countryid = countries.countryid
)

select *
from sales_CUST