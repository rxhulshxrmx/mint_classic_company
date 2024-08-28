-- Analyze top customers' ordering behavior.
SELECT 
    c.customerNumber,
    c.customerName,
    COUNT(DISTINCT o.orderNumber) AS order_count,
    SUM(od.quantityOrdered * od.priceEach) AS total_spent,
    AVG(DATEDIFF(o.shippedDate, o.orderDate)) AS avg_fulfillment_time
FROM 
    customers c
JOIN 
    orders o ON c.customerNumber = o.customerNumber
JOIN 
    orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY 
    c.customerNumber, c.customerName
ORDER BY 
    total_spent DESC
LIMIT 10;