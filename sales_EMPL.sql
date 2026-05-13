WITH sales_EMPL AS(
    SELECT
        CONCAT(employees.firstname, ' ', employees.lastname) as employeename,
        categories.categoryname,
        products.productname,
        products.price,
        sales.quantity,
        sales.discount,    
        (products.price * sales.quantity) * (1 - sales.discount) as totalprice,
        sales.salesdate,
        cities.cityname,
        countries.countryname,
        products.resistant,
        products.isallergic,
        employees.birthdate as employeebirthdate,
        employees.gender as employeegender,
        employees.hiredate as employeehiredate
    FROM sales

    LEFT JOIN products ON sales.productid = products.productid
    LEFT JOIN categories ON products.categoryid = categories.categoryid

    LEFT JOIN employees ON sales.salespersonid = employees.employeeid
    LEFT JOIN cities ON employees.cityid = cities.cityid

    LEFT JOIN countries ON cities.countryid = countries.countryid
)

select *
from sales_EMPL