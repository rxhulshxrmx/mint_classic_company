WITH warehouse_inventory AS (
    SELECT 
        w.warehouseCode, 
        w.warehouseName, 
        COUNT(DISTINCT o.customerNumber) AS `Number of Active Customers`,
        SUM(p.quantityInStock) AS totalInventory,
        IFNULL(SUM(od.quantityOrdered), 0) AS totalQuantityOrdered,
        IFNULL(SUM(od.quantityOrdered * od.priceEach) / NULLIF(AVG(p.quantityInStock), 0), 1) AS InventoryTurnOverRatio,
        IFNULL(AVG(p.quantityInStock) / NULLIF(SUM(od.quantityOrdered * od.priceEach), 0), 1) AS StockToSalesRatio
    FROM 
        warehouses w
    LEFT JOIN 
        products p ON w.warehouseCode = p.warehouseCode
    LEFT JOIN 
        orderdetails od ON p.productCode = od.productCode
    LEFT JOIN 
        orders o ON od.orderNumber = o.orderNumber
    GROUP BY 
        w.warehouseCode, w.warehouseName
)
SELECT 
    warehouseCode, 
    warehouseName, 
    `Number of Active Customers`,
    totalInventory,
    totalQuantityOrdered,
    ROUND(CAST(InventoryTurnOverRatio AS DECIMAL(10,2)), 2) AS InventoryTurnOverRatio,
    ROUND(CAST(StockToSalesRatio AS DECIMAL(10,4)), 4) AS StockToSalesRatio
FROM 
    warehouse_inventory
ORDER BY 
    StockToSalesRatio DESC;
