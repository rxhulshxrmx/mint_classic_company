-- Examine popularity and profitability of different product lines.
SELECT 
    p.productLine,
    COUNT(DISTINCT od.orderNumber) AS order_count,
    SUM(od.quantityOrdered * od.priceEach) AS total_revenue,
    AVG(p.quantityInStock) AS avg_inventory
FROM 
    products p
JOIN 
    orderdetails od ON p.productCode = od.productCode
JOIN 
    productlines pl ON p.productLine = pl.productLine
GROUP BY 
    p.productLine
ORDER BY 
    total_revenue DESC;