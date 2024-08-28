WITH CustomerWarehouseOrders AS (
    SELECT
        c.customerNumber,
        c.customerName,
        w.warehouseCode,
        w.warehouseName,
        o.orderNumber,
        od.quantityOrdered * od.priceEach AS order_value,
        DATEDIFF(o.shippedDate, o.orderDate) AS fulfillment_time
    FROM
        customers c
    JOIN
        orders o ON c.customerNumber = o.customerNumber
    JOIN
        orderdetails od ON o.orderNumber = od.orderNumber
    JOIN
        products p ON od.productCode = p.productCode
    JOIN
        warehouses w ON p.warehouseCode = w.warehouseCode
),
CustomerTotals AS (
    SELECT
        customerNumber,
        COUNT(DISTINCT orderNumber) AS total_orders
    FROM
        CustomerWarehouseOrders
    GROUP BY
        customerNumber
),
WarehouseDistribution AS (
    SELECT
        cwo.customerNumber,
        cwo.customerName,
        cwo.warehouseName,
        COUNT(DISTINCT cwo.orderNumber) AS warehouse_orders,
        ct.total_orders
    FROM
        CustomerWarehouseOrders cwo
    JOIN
        CustomerTotals ct ON cwo.customerNumber = ct.customerNumber
    GROUP BY
        cwo.customerNumber, cwo.customerName, cwo.warehouseName, ct.total_orders
)
SELECT
    cwo.customerNumber,
    cwo.customerName,
    COUNT(DISTINCT cwo.orderNumber) AS order_count,
    SUM(cwo.order_value) AS total_spent,
    AVG(cwo.fulfillment_time) AS avg_fulfillment_time,
    GROUP_CONCAT(DISTINCT CONCAT(wd.warehouseName, ': ', 
        ROUND(wd.warehouse_orders * 100.0 / wd.total_orders, 2), '%')
        ORDER BY wd.warehouse_orders DESC SEPARATOR ', ') AS warehouse_distribution
FROM
    CustomerWarehouseOrders cwo
JOIN
    WarehouseDistribution wd ON cwo.customerNumber = wd.customerNumber
GROUP BY
    cwo.customerNumber, cwo.customerName
ORDER BY
    total_spent DESC
LIMIT 10;