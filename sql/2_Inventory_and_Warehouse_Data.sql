-- This query ranks warehouses based on their total inventory, providing insights into which warehouses are most heavily stocked.
CREATE TEMPORARY TABLE TempInventory AS
SELECT
    w.warehouseCode,
    w.warehouseName,
    SUM(p.quantityInStock) AS totalInventory,
    w.warehousePctCap AS percentageCapacityUsed,
    RANK() OVER (ORDER BY SUM(p.quantityInStock) DESC) AS inventoryRank
FROM
    warehouses w
JOIN
    products p ON p.warehouseCode = w.warehouseCode
GROUP BY
    w.warehouseCode, w.warehouseName, w.warehousePctCap;