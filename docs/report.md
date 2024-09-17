# Mint Classics Company: Inventory Analysis

**Table of Contents**

- [Summary](#summary)
- [Introduction](#introduction)
- [Methodology](#methodology)
- [Recommendations](#recommendations)
- [Conclusion](#conclusion)

<a id="summary"></a>

## Summary

This report analyzes Mint Classics' inventory, sales, and shipping, focusing on product lines, customer behavior, and seasonal trends, identifying key improvement areas.

**Key Statistics**:

- **Inventory Concentration**: The East warehouse leads in revenue (3,853,922), followed by the South (1,876,645) and West (1,797,560). Average capacity utilization is 66%. The South warehouse, with product lines (Trucks & Buses, Ships, Trains), has the lowest revenue compared to other product lines.

- **Shipping Efficiency**: Mint Classics aims to ship within 24 hours, but fulfillment times often exceed this target, indicating delays in meeting customer expectations.

**Critical Recommendations**:

- **Eliminate South Warehouse**: Redistribute its inventory to the East and West warehouses to streamline operations and reduce risks.

- **Optimize Inventory Management**: Use markdowns, promotions, or order reductions for products with high inventory; address stockout risks and remove stagnant products.

- **Refine Shipping Protocols**: Improve shipping processes to consistently meet the 24-hour fulfillment target, ensuring customer satisfaction and upholding the brand promise.

<a id="introduction"></a>

## Introduction

Mint Classics, a retailer in classic model cars, is assessing the potential closure of a storage facility to improve operational efficiency while maintaining service quality. This analysis explores inventory, sales, and shipping data to inform the decision.

<a id="methodology"></a>

## Methodology

Data was extracted from Mint Classics' database, cleaned for consistency, and visualized using Tableau. MySQL Workbench facilitated the extraction process.

### Queries and Purpose

Exploratory data analysis utilized SQL queries to extract and analyze data, revealing insights into the company's operations. This section details each query and its purpose.

1. **Overview of Warehouse and Inventory**

**Objective:** Providing a performance overview of each warehouse, focusing on revenue, capacity, stagnant products, and inventory.

**Insights:** The South Warehouse has the highest capacity usage (75%), while East Warehouse holds the most inventory but has a stagnant product. West Warehouse is underutilized with low revenue, and North Warehouse operates efficiently but can improve further. These findings highlight opportunities for optimization.

![Figure_1](https://github.com/user-attachments/assets/d67ba411-ef72-4cab-8c21-7aa5400bb1c5)

2. **Product Line Analysis**

**Objective:** Identifying the optimal warehouse for closure at Mint Classics Company by analyzing product line performance, inventory levels, and revenue.

**Insights:** All low-performing product lines belong to the South warehouse: Trains have the lowest revenue at $188k, Ships generate just $664k, and Trucks and Buses contribute $1.02 million, all below the average performance of other warehouses.

Warehouse Contribution Key:
East: Blue,
West: Orange,
South: Red,
North: Green
![image](https://github.com/user-attachments/assets/5a01fdd7-2939-41f8-a586-e1ec508274c9)


3. **Customer Order Pattern**

**Objective:** Assessing the contribution of key customers to overall company revenue and warehouse efficiency.

**Insights:** South warehouse has the lowest fulfillment percentages for most top customers, often falling below 50%, while East and West warehouses dominate. Despite handling high-revenue clients, South's contribution remains minimal, reinforcing the case for potential closure.

![image](https://github.com/user-attachments/assets/fd22b37e-af4a-45e1-bf28-9b83598decbb)


4. **Product Stock Status Analysis**

**Objective:** Categorizing products as overstocked, understocked, or balanced based on their inventory levels relative to their sales.

**Insights:** Based on the stock status analysis, it is recommended to discontinue products categorized as overstocked to prevent excess inventory and free up warehouse space. For understocked items, increasing stock levels or placing additional orders is advised to meet demand and prevent shortages. Regularly reviewing and adjusting inventory levels will help maintain a balanced stock status, optimizing both warehouse space and resource allocation.

![Figure_1](https://github.com/user-attachments/assets/9baf9e42-3e66-40b0-9589-82796d339d66)


5. **Unsold Inventory Age Analysis**

**Objective:** 

**Insights:** 

6. **Order Fulfillment Time Analysis**

**Objective:** 

**Insights:** 

7. **Seasonal Trends Analysis**

**Objective:** 

**Insights:** 

8. **Employee Performance Analysis**

**Objective:** 

**Insights:** 
<a id="limitations-and-challenges"></a>


<a id="recommedations"></a>

## Recommendations

1. **Warehouse Optimization**: Consider redistributing products between warehouses to optimize space. This might allow the company to eliminate a warehouse, reducing overhead costs. Alternatively, Consider consolidating inventory from less utilized warehouses to more active ones. This can help in optimizing storage costs and might even lead to the closure or repurposing of a warehouse.

2. **Inventory Management**: Adjust stock levels based on sales trends. Increase stock for products with a high sales-to-stock ratio and reduce stock for overstocked products. The products identified as potentially overstocked should be reviewed. Strategies such as discounts, promotions, or bundling with other products can be used to move these products faster. If these strategies don't work, consider discontinuing these products.

3. **Product Line Review**: Products that have not been sold at all should be reviewed for discontinuation. Before making a final decision, consider if there are any marketing or promotional strategies that can be used to boost their sales.

4. **Improve Shipping Efficiency**: Implement strategies to ensure more orders are shipped within 24 hours. This could include optimizing the order processing system, improving warehouse operations, or offering incentives for timely shipping.

<a id="conclusion"></a>

## Conclusions

The analysis provides valuable insights into Mint Classics Company's operations. Implementing the recommendations can lead to cost savings, increased sales, and enhanced customer satisfaction. Looking forward, the company can expect improved operational efficiency and a stronger market position.
