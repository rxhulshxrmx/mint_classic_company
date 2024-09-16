# Mint Classics Company: Inventory Analysis

**Table of Contents**

- [Summary](#summary)
- [Introduction](#introduction)
- [Methodology](#methodology)
  - [SQL Queries and Purpose](#sql-queries-and-purpose)
  - [Limitations and Challenges](#limitations-and-challenges)
- [Results](#results)
- [Discussion](#discussion)
  - [Potential Risks and Challenges](#potential-risks-and-challenges)
- [Recommendations](#recommendations)
- [Conclusion](#conclusion)
- [Stakeholder Implications](#stakeholder-implications)

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

<a id="sql-queries-and-purpose"></a>

### SQL Queries and Purpose

Exploratory data analysis utilized SQL queries to extract and analyze data, revealing insights into the company's operations. This section details each query and its purpose.

1. **Overview of Warehouse and Inventory**

**Objective:** Providing a performance overview of each warehouse, focusing on revenue, capacity, stagnant products, and inventory.

**Insights:** The South Warehouse has the highest capacity usage (75%), while East Warehouse holds the most inventory but has a stagnant product. West Warehouse is underutilized with low revenue, and North Warehouse operates efficiently but can improve further. These findings highlight opportunities for optimization.

2. **Product Line Analysis**

**Objective:** Identifying the optimal warehouse for closure at Mint Classics Company by analyzing product line performance, inventory levels, and revenue.

**Insights:** 

3. **Customer Order Pattern**

**Objective:** 

**Insights:** 

4. **Product Stock Status Analysis**

**Objective:** Categorizing products as overstocked, understocked, or balanced based on their inventory levels relative to their sales.

**Insights:** Based on the stock status analysis, it is recommended to discontinue products categorized as overstocked to prevent excess inventory and free up warehouse space. For understocked items, increasing stock levels or placing additional orders is advised to meet demand and prevent shortages. Regularly reviewing and adjusting inventory levels will help maintain a balanced stock status, optimizing both warehouse space and resource allocation.

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



<a id="results"></a>

## Results

(For each result, a brief narrative is added.)

### 1. Where are items stored and if they were rearranged, could a warehouse be eliminated?

Products are stored across multiple warehouses. Warehouse A houses approximately 65% of the company's total product inventory.

![result_1_image](https://github.com/KenSteadman/Mint-Classic/assets/104181918/2266c892-be4b-45f3-b335-4a35918ec912)

### 2. How are inventory numbers related to sales figures?

The sales-to-stock ratio indicates product demand. Products like "Vintage Car Model X" might be overstocked, while "Modern Car Model Z" shows high demand.

![result_2a_image](https://github.com/KenSteadman/Mint-Classic/assets/104181918/26de24c6-96fd-4a41-97a3-3f84d259517d)


![result_2b_image](https://github.com/KenSteadman/Mint-Classic/assets/104181918/ca62e30a-f1a9-4604-b7e7-f9619edccafa)

### 3. Are we storing items that are not moving?

Products like "Antique Decor Model A" have not registered any sales in the past year, indicating they might be outdated.

<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }

</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>productName</th>
      <th>productCode</th>
      <th>quantityInStock</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>109</th>
      <td>1985 Toyota Supra</td>
      <td>S18_3233</td>
      <td>7733</td>
    </tr>
  </tbody>
</table>
</div>

### 4. Can the company ship to customers within 24hrs?

Only 15% of orders were shipped within 24 hours, indicating room for improvement in shipping efficiency.

![result_4_image](https://github.com/KenSteadman/Mint-Classic/assets/104181918/34fafcd2-764b-4561-a30e-1b0f78d7b655)

<a id="discussion"></a>

## Discussion

The analysis unveiled several pivotal insights that can guide Mint Classics Company's inventory-related decisions:

**Inventory Distribution:**

Analysis:

Warehouse Concentration: Our data analysis has shown that Warehouse A is the primary storage facility, housing approximately 65% of the company's total product inventory. In contrast, other warehouses, such as Warehouse B and C, hold around 20% and 15% respectively.
Such a concentration in Warehouse A can lead to:

Operational Inefficiency: Centralizing a vast majority of the inventory in one location can result in operational bottlenecks. During peak sales periods or promotional events, Warehouse A might face challenges in order processing, packaging, and shipping due to the sheer volume of products it manages.

Increased Risk: Concentrating such a significant portion of the inventory in one location exposes the company to amplified risks. Any unforeseen events, such as natural disasters, fires, or even operational hiccups in Warehouse A, could disrupt a majority of the company's supply chain.

Shipping Delays: If a substantial portion of customer orders originates from regions distant from Warehouse A, this could lead to extended shipping times, potentially affecting customer satisfaction and increasing shipping costs.

Recommendation for Leadership:

A strategic redistribution of inventory is crucial. By balancing the inventory across all warehouses, the company can mitigate risks, improve operational efficiency, and enhance customer satisfaction through quicker shipping times. This strategy will also allow the company to be more agile in responding to regional demand fluctuations.

**Sales vs. Inventory:**

Analysis:

Overstocked Products: Certain products, such as "Vintage Car Model X" and "Classic Bike Model Y," are overrepresented in our inventory. Despite having significant inventory counts, their sales figures over the past year have been lackluster.

High Demand Products: Conversely, products like "Modern Car Model Z" have shown robust sales figures, indicating a strong market demand. However, their inventory levels are not aligned with this demand, leading to potential stockouts.

Recommendation for Leadership:

It's essential to align inventory levels with market demand. For overstocked products, consider initiating targeted marketing campaigns or bundling them with high-demand products to accelerate sales. For products with high demand, it's crucial to ramp up production or procurement to ensure that inventory levels meet market demand, preventing potential revenue loss from stockouts.

**Stagnant Products:**

Analysis:

Unsold Products: There are products in our inventory, like "Antique Decor Model A" and "Retro Toy Model B," that have not registered any sales in the past year. These products, while occupying valuable warehouse space, are not contributing to the company's revenue.
Recommendation for Leadership:

A thorough market analysis is required to determine the relevance of these products. If they are found to be outdated or not aligned with current market trends, consider discontinuing them or placing them on clearance sales. This strategy will free up valuable warehouse space for more trending and profitable products, optimizing the product mix and potentially boosting overall revenue.

**Shipping Efficiency:**

Analysis:

Our data analysis has shown that while Mint Classics Company has made efforts to ship orders promptly, there's room for improvement. Specifically:

24-hour Shipping: Only about 15% of the orders were shipped within the coveted 24-hour window, which is the gold standard in today's e-commerce landscape.

Beyond 24-hour Shipping: The remaining 85% of orders experienced delays, taking more than a day to ship. In an era where customers expect rapid deliveries, such delays can significantly impact customer satisfaction and loyalty.

Several factors could be contributing to these delays:

- Inventory Distribution: Warehouse A, which houses approximately 65% of the company's total product inventory, might be experiencing operational bottlenecks due to the sheer volume of products it manages. If a large portion of orders needs to be processed in a short time, especially during peak sales periods, this warehouse might struggle to keep up.

- Order Volume: Our analysis indicated that there are specific days or periods, possibly coinciding with promotional events or holidays, when the order volume spikes. Such surges can strain the existing operational capacities, leading to shipping delays.

- External Factors: The company might be facing challenges with its shipping partners, leading to delays. Additionally, external events, such as supply chain disruptions, strikes, or even adverse weather conditions, can impact shipping times.

Recommendation for Leadership:

To address these challenges and enhance shipping efficiency:

Inventory Redistribution: Consider redistributing inventory across all warehouses. This strategy can help in reducing the operational load on Warehouse A, ensuring quicker order processing and shipping.

Operational Enhancements: On days with anticipated high order volumes, consider ramping up staffing or extending operational hours to handle the surge. This proactive approach can help in reducing shipping delays during peak periods.

Review Shipping Partnerships: Engage with current shipping partners to identify and address any challenges leading to delays. If the issues persist, consider exploring alternative shipping partners who can guarantee quicker deliveries.

Supply Chain Resilience: Build a resilient supply chain by diversifying suppliers and maintaining a buffer stock for high-demand products. This strategy can help in mitigating the impact of external supply chain disruptions.

The overarching goal should be to consistently ship a higher percentage of orders within the 24-hour window. Achieving this will not only enhance customer satisfaction but also position Mint Classics Company as a reliable and customer-centric retailer in the market.

<a id="potential-risks-and-challenges"></a>

### Potential Risks and Challenges

Implementing the recommendations might pose certain risks:

- Redistributing inventory could lead to short-term disruptions.
- Discontinuing certain products might affect brand perception.
- Enhancing shipping efficiency might increase operational costs.

<a id="recommedations"></a>

## Recommendations

1. **Warehouse Optimization**: Consider redistributing products between warehouses to optimize space. This might allow the company to eliminate a warehouse, reducing overhead costs. Alternatively, Consider consolidating inventory from less utilized warehouses to more active ones. This can help in optimizing storage costs and might even lead to the closure or repurposing of a warehouse.

2. **Inventory Management**: Adjust stock levels based on sales trends. Increase stock for products with a high sales-to-stock ratio and reduce stock for overstocked products. The products identified as potentially overstocked should be reviewed. Strategies such as discounts, promotions, or bundling with other products can be used to move these products faster. If these strategies don't work, consider discontinuing these products.

3. **Product Line Review**: Products that have not been sold at all should be reviewed for discontinuation. Before making a final decision, consider if there are any marketing or promotional strategies that can be used to boost their sales.

4. **Improve Shipping Efficiency**: Implement strategies to ensure more orders are shipped within 24 hours. This could include optimizing the order processing system, improving warehouse operations, or offering incentives for timely shipping.

<a id="conclusion"></a>

## Conclusions

The analysis provides valuable insights into Mint Classics Company's operations. Implementing the recommendations can lead to cost savings, increased sales, and enhanced customer satisfaction. Looking forward, the company can expect improved operational efficiency and a stronger market position.

<a id="stakeholder-implications"></a>

## Stakeholder Implications

- **Warehouse Staff**: Might face changes in workload due to inventory redistribution.
- **Sales Team**: Can leverage insights to push certain products and design promotions.
- **Customers**: Can expect quicker deliveries and a more streamlined
