-- Categorize products as overstocked, understocked, or balanced.
CREATE TEMPORARY TABLE TempStockStatus AS
WITH SalesData AS (
    SELECT
        p.productCode,
        p.quantityInStock,
        COALESCE(SUM(od.quantityOrdered), 0) AS totalQuantityOrdered
    FROM
        products p
    LEFT JOIN
        orderdetails od ON p.productCode = od.productCode
    LEFT JOIN
        orders o ON od.orderNumber = o.orderNumber
    GROUP BY
        p.productCode, p.quantityInStock
)
SELECT
    p.productName,
    p.productCode,
    p.quantityInStock,
    COALESCE(sd.totalQuantityOrdered, 0) AS totalQuantityOrdered,
    CASE
        WHEN p.quantityInStock > 2 * COALESCE(sd.totalQuantityOrdered, 0) THEN 'Overstocked'
        WHEN p.quantityInStock < 0.5 * COALESCE(sd.totalQuantityOrdered, 0) THEN 'Understocked'
        ELSE 'Balanced'
    END AS stockStatus,
    p.warehouseCode
FROM
    products p
LEFT JOIN
    SalesData sd ON p.productCode = sd.productCode;