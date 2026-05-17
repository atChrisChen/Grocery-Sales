CREATE OR REPLACE VIEW sales_monthly_category AS
SELECT
    DATE_TRUNC('month', sales.salesdate) AS month,
    categories.categoryname,
    cities.cityname,

    SUM(products.price * sales.quantity * (1 - sales.discount)) AS total_revenue,
    SUM(sales.quantity) AS total_quantity,
    COUNT(*) AS sales_count,
    SUM(products.price * sales.quantity * (1 - sales.discount)) / NULLIF(COUNT(*), 0) AS avg_order_value

FROM sales
LEFT JOIN products ON sales.productid = products.productid
LEFT JOIN categories ON products.categoryid = categories.categoryid
LEFT JOIN customers ON sales.customerid = customers.customerid
LEFT JOIN cities ON customers.cityid = cities.cityid

WHERE sales.salesdate IS NOT NULL

GROUP BY
    DATE_TRUNC('month', sales.salesdate),
    categories.categoryname,
    cities.cityname;