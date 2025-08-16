# Retail Sales Analysis

## Table of Contents

1. [Project Description](#project-description)
2. [Executive Summary](#executive-summary)
3. [Key Findings](#key-findings)
4. [About the Data](#about-the-data)
5. [SQL Server Docker Container Setup](#sql-server-docker-container-setup)
6. [SQL Query Files](#sql-query-files)


## Project Description
The aim of this project is to simulate a retail sales analysis that is likely to occur within a wholesale business. One should gain a basic understanding of key customers, categories, and regions within the business. This report could be used for a new general manager (GM) onboarding to the company. The project aims to showcase key SQL operations - starting with the foundational operations of `SELECT`, `FROM`, `WHERE`, `GROUP BY`, `HAVING`, and `ORDER BY`. From this point, there will be further uses of more advanced techniques such as `SUB-QUERIES`, `CTEs`, and `WINDOW FUNCTIONS`. 

The project will provide actionable insights, operational suggesions, and leadership level recommendations that could be implemented to improve the business as the new GM onboards. 

## Executive Summary
The purpose of this report was to uncover basic statistics and opportunities of focus as a new GM onboards to the company. It was found that in the last 7 months, the company is operating at a relatively healthy profit margin and the furniture category leading the way in total profit. However, the electronics category is falling behind in total profit with >4x less than furniture. This is driven slightly by the West Region, under-pacing all other regions.

When diving deeper into a profitability analysis across the company, it was found that on a per unit basis, products falling within the $80-$99.99 price point generate the highest amount of profit contribution. Profit margin was steady at 20% across all price brackets. Daily profit margin has ranged from 17-24%. 

It is recommended that the new GM puts his/her focus on increasing the profit of the electronics category by implementing sales tactics such as promotions, informational sessions with customers, or improving the catalog of products. The GM should continue what is working for the furniture category and focus should be spent on hiring or training sales talent in the West region to boost sales.

## Key Findings

* **Top Customers:** One way to ensure you are building a profitable company is by nurturing the relationship of new clients. Customer CUST-478 has the highest profit of any customer spending over $1,500 in their last 3 orders. This customer averaged profit of `$330 per order` and a Customer Relationship Management plan should be implemented to foster an ongoing relationship with them.

* **Order Frequency:** How often a customer places an order varies by industry, company, and product offering. For this business, the average time between orders is `32 days`. Given this is a wholesale company, this is likely a sufficent time between orders. Larger corporations take longer to place orders as they often are buying in bulk. This metric should be tracked over time to see if there are any changes within key customers.

* **Order Timing:** Understanding when orders are placed can be strategically used in aiding sales staff. By knowing when a customer is likely to place an order, an email or phone call can be sent to the customer to ask if they need any help, information, or assistance in placing their orders. It was found that the top 3 times were `8:00PM`, `1:00PM`, and  `8:00AM`. It appears that our customers are placing orders at the very beginning, middle, or end of their days. By knowing this, sales teams should strategically plan their communications around these times to ensure deals are closed.


## About the Data

This retail sales analysis is conducted using SQL Server dialect (T-SQL). The data for this project were artifically generated using artificial intelligence via ChatGPT. A prompt was engineered, iterated, and then a CSV file was downloaded. That CSV file was then uploaded to the database via the Docker Container.


## SQL Server Docker Container Setup

This project utilizes a Docker container running SQL Server. The database is accessed and managed using **Azure Data Studio**.

### Setup Instructions

1. **Docker Container**:
   - A Docker container is set up with SQL Server running inside it. This container serves as the database instance for the project.

2. **Accessing the Database**:
   - To interact with the SQL Server instance, you can use **Azure Data Studio**. The database is configured to allow connections for managing and querying data.

### Prerequisites
- Docker must be installed and running on your machine.
- Azure Data Studio should be installed to connect to the SQL Server instance.
- The SQL Server container is running and accessible.

### How to Connect

1. Ensure the SQL Server Docker container is running.
2. Open **Azure Data Studio**.
3. Set the following connection details in your environment or configuration:
   - **Server**: `localhost,<port_number>`
   - **Authentication**: SQL Server Authentication
   - **User**: `DB_USER` (set as an environment variable)
   - **Password**: `DB_PASSWORD` (set as an environment variable)


## SQL Query Files

### Overview
This project contains several SQL query files, each serving a specific function in the database setup and data analysis process. Below is a summary of what each file does. All queries for this analysis can be found in the [code directory](/sql-projects/retail-sales-analysis/code/). 

### Files:
1. `create_table.sql`  
   - **Purpose**: Create the RETAIL_SALES_ANALYSIS table and upload the data into it.
   - **Key Operations**: 
     - Create order data table. 
     - Insert data into table.

2. `exploratory_analysis.sql`
   - **Purpose**: Initial exploratory analysis to understand the underlying sales data.
   - **Key Operations**: 
     - Understand summary statistics of the data.
     - Analyze basic customer, category, and region metrics.

3. `profitability_analysis.sql`
   - **Purpose**: Deep dive analysis focusing on understanding 5 key questions about profitability.
   - **Key Operations**: 
     - Uncover profitability nuances by analyzing multiple cuts of the data (region, time, etc). 
     - Utilize foundational & advanced SQL queries to unlock applicable profitability insights.

---

Each of these files is intended to work together to provide a comprehensive analysis and management of the retail sales data.
