-- This provides a high-level view of each warehouse's performance, including revenue, capacity, and stagnant products.
WITH WarehouseRevenue AS (
    SELECT
        w.warehouseCode,
        w.warehouseName,
        SUM(od.quantityOrdered * od.priceEach) AS totalRevenue
    FROM
        warehouses w
    JOIN
        products p ON w.warehouseCode = p.warehouseCode
    JOIN
        orderdetails od ON p.productCode = od.productCode
    GROUP BY
        w.warehouseCode, w.warehouseName
),
WarehouseMetrics AS (
    SELECT
        w.warehouseCode,
        w.warehouseName,
        w.warehousePctCap AS pctCap,
        COUNT(DISTINCT p.productCode) AS numProducts,
        SUM(p.quantityInStock) AS totalInventoryVolume,
        SUM(CASE WHEN od.productCode IS NULL THEN 1 ELSE 0 END) AS stagnantProducts
    FROM
        warehouses w
    LEFT JOIN
        products p ON w.warehouseCode = p.warehouseCode
    LEFT JOIN
        orderdetails od ON p.productCode = od.productCode
    GROUP BY
        w.warehouseCode, w.warehouseName, w.warehousePctCap
)
SELECT
    wm.warehouseCode,
    wm.warehouseName,
    wm.numProducts,
    wm.totalInventoryVolume,
    wm.stagnantProducts,
    wr.totalRevenue,
    wm.pctCap
FROM
    WarehouseMetrics wm
JOIN
    WarehouseRevenue wr ON wm.warehouseCode = wr.warehouseCode
ORDER BY
    wm.stagnantProducts DESC, wr.totalRevenue ASC, wm.pctCap DESC;