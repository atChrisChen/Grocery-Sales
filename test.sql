with grocery_sales_EMPL AS(
    SELECT *
    FROM sales
    LEFT JOIN products ON sales.productid = products.productid
    LEFT JOIN categories ON products.categoryid = categories.categoryid

    LEFT JOIN employees ON sales.salespersonid = employees.employeeid
    LEFT JOIN cities ON employees.cityid = cities.cityid
    LEFT JOIN countries ON cities.countryid = countries.countryid
),

grocery_sales_CUST AS(
    SELECT *
    FROM sales
    LEFT JOIN products ON sales.productid = products.productid
    LEFT JOIN categories ON products.categoryid = categories.categoryid

    LEFT JOIN customers ON sales.customerID = customers.customerID
    LEFT JOIN cities ON customers.cityid = cities.cityid
    LEFT JOIN countries ON cities.countryid = countries.countryid
)

select * from grocery_sales_EMPL limit 1000;
select * from grocery_sales_CUST limit 1000;