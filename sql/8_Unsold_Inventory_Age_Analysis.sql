-- Analyze slow-moving or obsolete stock.
SELECT
    p.productName,
    p.productCode,
    p.quantityInStock,
    DATEDIFF('2005-05-31', MIN(o.orderDate)) AS daysSinceLastOrder
FROM
    products p
LEFT JOIN
    orderdetails od ON p.productCode = od.productCode
LEFT JOIN
    orders o ON od.orderNumber = o.orderNumber
WHERE
    od.productCode IS NOT NULL
GROUP BY
    p.productName, p.productCode, p.quantityInStock
ORDER BY
    daysSinceLastOrder DESC;