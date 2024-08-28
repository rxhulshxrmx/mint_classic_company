-- Analyze the performance of each warehouse based on product line.
SELECT 
    w.warehouseCode,
    w.warehouseName,
    p.productLine,
    COUNT(DISTINCT p.productCode) AS unique_products,
    SUM(p.quantityInStock) AS total_inventory,
    AVG(p.quantityInStock) AS avg_inventory_per_product,
    COALESCE(SUM(od.quantityOrdered * od.priceEach), 0) AS total_revenue
FROM 
    warehouses w
JOIN 
    products p ON w.warehouseCode = p.warehouseCode
LEFT JOIN 
    orderdetails od ON p.productCode = od.productCode
GROUP BY 
    w.warehouseCode, w.warehouseName, p.productLine
ORDER BY 
    w.warehouseCode, total_revenue DESC;