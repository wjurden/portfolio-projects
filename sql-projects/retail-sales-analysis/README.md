# Retail Sales Analysis

## Table of Contents

1. [Executive Summary](#executive-summary)
2. [Key Findings](#key-findings)
3. [Project Description](#project-description)
4. [About the Data](#about-the-data)
5. [SQL Server Docker Container Setup](#sql-server-docker-container-setup)
6. [SQL Query Files](#sql-query-files)


## Executive Summary


## Key Findings


## Project Description
The aim of this project is to simulate a profit, sales, and customer analysis that is likely to occur within a wholesale business. The project aims to showcase key SQL operations - starting with the foundational operations of `SELECT`, `FROM`, `WHERE`, `GROUP BY`, `HAVING`, and `ORDER BY`. From this point, there will be further uses of more advanced techniques such as `CTEs`, `WINDOW FUNCTIONS`, and `REGEX`. 

The project will provide actionable insights, operational suggesions, and leadership level recommendations that could be implemented to improve the business. 

## About the Data

This retail sales analysis is conducted using SQL Server dialect (T-SQL). The data for this project were artifically generated using ChatGPT.


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
   - **Purpose**: Create the RETAIL_SALES_ANALYSIS &  CUSTOMER tables and upload the data into them.
   - **Key Operations**: 
     - Create order data & customers table. 
     - Insert data into tables.

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

4. `sales_analysis.sql`
   - **Purpose**: Deep dive analysis focusing on understanding 5 key questions about sales.
   - **Key Operations**: 
     - Joining in the CUSTOMERS table to discover sales insights. 
     - Find actionable unlocks for the business via sales analysis.

5. `customer_analysis.sql`
   - **Purpose**: Deep dive analysis focusing on understanding 5 key questions about customers.
   - **Key Operations**: 
     - Exploratory analysis on customers. 
     - Deep dive into key business questions surrounding our consumer base demographics.

---

Each of these files is intended to work together to provide a comprehensive analysis and management of the retail sales data.
