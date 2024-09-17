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

**Objective:** Analyzing the age of unsold inventory to identify products that have been in stock for extended periods, which could indicate potential issues with demand or stock rotation.

**Insights:** Products with high stock and long days since last order may need discounts or promotional strategies to clear out inventory and improve turnover.

6. **Order Fulfillment Time Analysis**

**Objective:** Analyze the distribution of order fulfillment times to assess shipping efficiency and identify potential delays.

**Insights:** Order fulfillment times frequently exceed the 24-hour target, with most orders completed within 1 to 6 days. However, some orders take up to 65 days, revealing significant delays and opportunities for enhancing shipping efficiency.

![Figure_1](https://github.com/user-attachments/assets/d31361f1-915a-49e3-a90b-902111b9b076)


7. **Seasonal Trends Analysis**

**Objective:** Understand monthly revenue patterns over three years.

**Insights:** Sales peak in October and November, showing strong holiday demand. This suggests the need for better inventory management before these peak months to ensure stock is available and fulfill orders on time.

![Figure_1](https://github.com/user-attachments/assets/bed0ddc4-2abe-4d6d-9cf9-e1f99a38d17d)


8. **Employee Performance Analysis**

**Objective:** Evaluate and compare employee performance based on order count and total sales, identifying top performers and their impact on overall sales.

**Insights:** High-performing employees, such as Gerard Hernandez and Leslie Jennings, significantly contribute to sales. Incentivizing these top performers could further boost their productivity and inspire others to excel, potentially increasing overall sales performance.

![Figure_1](https://github.com/user-attachments/assets/f688ed56-8c2e-418e-ae17-f58a1d1223a5)


<a id="recommedations"></a>

## Recommendations

1. **Warehouse Optimization**: Consider redistributing inventory from the South warehouse to the East and West warehouses. This may allow for the closure of the South warehouse, streamlining operations and reducing overhead costs.
   
2. **Inventory Management**: Adjust stock levels based on sales trends. Implement discounts, promotions, or bundling for overstocked items to accelerate their sale. For understocked products, increase stock levels to meet demand and prevent stockouts.

3. **Product Line Review**: Review and potentially discontinue products with no sales. Evaluate marketing strategies to boost sales before making discontinuation decisions.

4. **Improve Shipping Efficiency**: Implement strategies to ensure more orders are shipped within 24 hours. This could involve optimizing order processing systems, enhancing warehouse operations, or offering incentives for timely shipping.

<a id="conclusion"></a>

## Conclusions

The analysis highlights key areas for improvement in Mint Classics Company's operations. Implementing the recommendations can lead to cost savings, increased sales, and improved customer satisfaction. Enhanced operational efficiency and a stronger market position are expected outcomes.
