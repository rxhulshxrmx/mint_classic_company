-- Understand how seasonality affects sales and inventory needs.
SELECT 
    YEAR(o.orderDate) AS year,
    MONTH(o.orderDate) AS month,
    SUM(od.quantityOrdered * od.priceEach) AS monthly_revenue
FROM 
    orders o
JOIN 
    orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY 
    YEAR(o.orderDate), MONTH(o.orderDate)
ORDER BY 
    year, month;