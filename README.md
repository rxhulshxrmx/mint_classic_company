# Mint Classics Inventory Optimization

## Project Scenario

Mint Classics Company, a retailer of classic model cars and other vehicles, is considering closing one of their storage facilities. To make a data-based business decision, they seek suggestions and recommendations for reorganizing or reducing inventory while maintaining timely customer service.

 Your goal is to identify parts of the data that could help in deciding how to reduce inventory. You will write SQL queries to answer questions like:

1. Where are items stored, and could a warehouse be eliminated by rearranging them?
2. How do inventory numbers relate to sales figures? Are the inventory counts appropriate for each item?
3. Are we storing items that are not moving? Which items could be candidates for being dropped from the product line?

These insights will help formulate suggestions and recommendations for reducing inventory, with the ultimate goal of closing one of the storage facilities.

## Repository Structure
```
rxhulshxrmx/
├── data/                  
│   ├── Mint_Classic_Database.sql   
│   ├── schema.png                  
│   └── README.md                   
│
├── docs/                  
│   ├── images/                  
│   └── report.md                   
│
├── sql_queries/           
│   ├── 1_Overview_of_Warehouse_and_Inventory.sql        
│   ├── 2_Inventory_and_Warehouse_Data.sql
│   ├── 3_Stock_Status_Analysis.sql
│   ├── 4_Warehouse_Stock_Status_Summary.sql
│   ├── 5A_Product_Line_Analysis.sql
│   ├── 5B_Product_Line_Analysis.sql
│   ├── 6_High_Inventory_Low_Sales_Items.sql
│   ├── 7_Products_Close_to_Stockouts.sql
│   ├── 8_Unsold_Inventory_Age_Analysis.sql
│   ├── 9_Order_Fulfillment_Time_Analysis.sql
│   ├── 10_Seasonal_Trends_Analysis.sql
│   ├── 11_Customer_Order_Patterns.sql
│   └── 12_Employee_Performance_Analysis.sql
│
├── sql_queries_results/  
│   ├── 1_Overview_of_Warehouse_and_Inventory.csv     
│   ├── 2_Inventory_and_Warehouse_Data.csv
│   ├── 3_Stock_Status_Analysis.csv
│   ├── 4_Warehouse_Stock_Status_Summary.csv
│   ├── 5A_Product_Line_Analysis.csv
│   ├── 5B_Product_Line_Analysis.csv
│   ├── 6_High_Inventory_Low_Sales_Items.csv
│   ├── 7_Products_Close_to_Stockouts.csv
│   ├── 8_Unsold_Inventory_Age_Analysis.csv
│   ├── 9_Order_Fulfillment_Time_Analysis.csv
│   ├── 10_Seasonal_Trends_Analysis.csv
│   ├── 11_Customer_Order_Patterns.csv
│   └── 12_Employee_Performance_Analysis.csv
│
├── tableau/              
│   ├── Mint_Classic_Company.twb      
│   ├── README.md                     
│   └── .DS_Store                     
│
├── scripts/
│   ├── Employee_Performance_Analysis.py
│   ├── Order_Fulfillment_Time_Analysis.py
│   └── Seasonal_Trends_in_Monthly_Revenue.py
│
├── .gitignore             
└── README.md   
```


## Analysis and Findings
The analysis reveals critical insights into Mint Classics Company's inventory, sales, and operational efficiency. Key findings include:

1. Warehouse Performance: The East warehouse leads in revenue, while the South warehouse underperforms, suggesting potential for warehouse consolidation.
2. Shipping Efficiency: Order fulfillment times frequently exceed the 24-hour target, highlighting delays that need addressing.
3. Product Stock Status: Overstocked products should be managed with promotions or discounts, while understocked items require increased stock levels.
4. Seasonal Trends: Strong sales in October and November indicate a need for improved inventory management ahead of these peak periods.
5. Employee Performance: High-performing employees significantly contribute to sales; incentivizing them could drive further performance improvements.
These findings point to areas where strategic adjustments could enhance operational efficiency and drive better results.

For a comprehensive analysis and detailed findings, please refer to the [detailed report](docs/report.md). <br/>
Tableau Dashboard: [bit.ly/tableau_mint_classic](https://bit.ly/tableau_mint_classic)
