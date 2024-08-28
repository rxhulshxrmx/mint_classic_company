-- Examine sales performance by employee and office.
SELECT 
    e.employeeNumber,
    e.lastName,
    e.firstName,
    o.officeCode,
    COUNT(DISTINCT ord.orderNumber) AS order_count,
    SUM(od.quantityOrdered * od.priceEach) AS total_sales
FROM 
    employees e
JOIN 
    customers c ON e.employeeNumber = c.salesRepEmployeeNumber
JOIN 
    orders ord ON c.customerNumber = ord.customerNumber
JOIN 
    orderdetails od ON ord.orderNumber = od.orderNumber
JOIN 
    offices o ON e.officeCode = o.officeCode
GROUP BY 
    e.employeeNumber, e.lastName, e.firstName, o.officeCode
ORDER BY 
    total_sales DESC;