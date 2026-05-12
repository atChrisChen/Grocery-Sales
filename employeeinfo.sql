with employee_info AS(
    SELECT *
    FROM sales
    LEFT JOIN employees ON sales.salespersonid = employees.employeeid
    LEFT JOIN products ON sales.productid = products.productid
)

SELECT 
    CONCAT(firstname, ' ', lastname) as employeename,
    birthdate,
    gender,
    hiredate,
    price, 
    quantity,
    discount,
    (price * quantity) - (price * discount) as total
FROM employee_info