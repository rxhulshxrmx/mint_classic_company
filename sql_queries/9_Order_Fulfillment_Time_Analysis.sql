-- Check if the 24-hour shipping goal is being met.
SELECT 
    DATEDIFF(o.shippedDate, o.orderDate) AS fulfillment_time,
    COUNT(*) AS order_count
FROM 
    orders o
GROUP BY 
    fulfillment_time
ORDER BY 
    fulfillment_time;