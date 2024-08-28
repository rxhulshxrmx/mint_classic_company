-- This query summarizes the stock status of products in each warehouse, categorizing them as overstocked, understocked, or balanced.
SELECT
    t.warehouseCode,
    t.warehouseName,
    SUM(CASE WHEN s.stockStatus = 'Overstocked' THEN 1 ELSE 0 END) AS overstockedCount,
    SUM(CASE WHEN s.stockStatus = 'Understocked' THEN 1 ELSE 0 END) AS understockedCount,
    SUM(CASE WHEN s.stockStatus = 'Balanced' THEN 1 ELSE 0 END) AS balancedCount
FROM
    TempInventory t
JOIN
    TempStockStatus s ON t.warehouseCode = s.warehouseCode
GROUP BY
    t.warehouseCode, t.warehouseName;