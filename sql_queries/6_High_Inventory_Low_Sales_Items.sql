-- Identify potential candidates for inventory reduction.
SELECT
    p.productName,
    p.productCode,
    p.quantityInStock,
    COALESCE(SUM(od.quantityOrdered), 0) AS totalQuantitySold
FROM
    products p
LEFT JOIN
    orderdetails od ON p.productCode = od.productCode
GROUP BY
    p.productName, p.productCode, p.quantityInStock
HAVING
    p.quantityInStock > 10 * COALESCE(SUM(od.quantityOrdered), 0)
ORDER BY
    p.quantityInStock DESC;